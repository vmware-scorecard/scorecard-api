require 'sinatra'
require 'json'
require 'sinatra/cross_origin'
require_relative './data/scores'
require_relative './data/goals'
require_relative './data/events'
require_relative './data/metrics'
require 'date'

include Data::Scores
include Data::Goals
include Data::Events
include Data::Metrics

configure do
  enable :cross_origin
end

before do
  content_type 'application/json'
end

service_dictionary = {
  "cross-cloud" => {
    slug: "cross-cloud",
    displayName: "Cross Cloud"
  },
  "sddc-aas" => {
    slug: "sddc-aas",
    displayName: "SDDC-aaS"
  },
  "airwatch" => {
    slug: "airwatch",
    displayName: "AirWatch"
  }
}

def get_data(dictionary, params)
  category_slug = params['category_slug']
  service_slug = params['service_slug']
  data = dictionary[service_slug][category_slug.to_sym]

  get_data_for_date(data, params[:from_date], params[:to_date])
end

def get_data_for_date(data, from_date, to_date)
  from_date = Date.strptime(from_date, '%Y-%m-%d')
  to_date = Date.strptime(to_date, '%Y-%m-%d')
  data.select do |d|
    date = Date.strptime(d[:date], '%Y-%m-%d')
    from_date <= date && date <= to_date
  end
end


get '/services' do
  {
    services: service_dictionary.values
  }.to_json
end

get '/services/:service_slug' do
  service_slug = params['service_slug']
  service_dictionary[service_slug].to_json
end

get '/services/:service_slug/events' do
  service_slug = params['service_slug']
  data = events_dictionary[service_slug]

  {
    events: get_data_for_date(data, params[:from_date], params[:to_date])
  }.to_json
end

get '/categories' do
  {
    categories: [
      {
        slug: "overall",
        displayName: "Overall",
        color: "#0094d2"
      },
      {
        slug: "marketing",
        displayName: "Marketing",
        color: "#853fb3"
      },
      {
        slug: "finance",
        displayName: "Finance",
        color: "#318700"
      },
      {
        slug: "customer",
        displayName: "Customer",
        color: "#eb8d00"
      },
      {
        slug: "operation",
        displayName: "Operation",
        color: "#c92100"
      }
    ]
  }.to_json
end

get '/services/:service_slug/categories/:category_slug/scores' do
  {
    scores: get_data(scores_dictionary, params)
  }.to_json
end

get '/services/:service_slug/categories/:category_slug/goals' do
  {
    goals: get_data(goals_dictionary, params)
  }.to_json
end

get '/services/:service_slug/categories/:category_slug/metrics' do
  category_slug = params[:category_slug]
  service_slug = params[:service_slug]
  {
    metrics: metrics_dictionary[service_slug][category_slug.to_sym]
  }.to_json
end
