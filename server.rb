require 'sinatra'
require 'json'
require 'sinatra/cross_origin'
require_relative './data/scores'
require_relative './data/goals'

include Data::Scores
include Data::Goals

configure do
  enable :cross_origin
end

before do
  content_type 'application/json'
end

service_dictionary = {
  "hybrid-cloud" => {
    slug: "hybrid-cloud",
    displayName: "Hybrid Cloud"
  },
  "disaster-recovery" => {
    slug: "disaster-recovery",
    displayName: "Disaster Recovery"
  },
  "cloud-discovery" => {
    slug: "cloud-discovery",
    displayName: "Cloud Discovery"
  }
}

get '/services' do
  {
    services: service_dictionary.values
  }.to_json
end

get '/services/:service_slug' do
  service_slug = params['service_slug']
  service_dictionary[service_slug].to_json
end

get '/categories' do
  {
    categories: [
      {
        slug: "overall",
        displayName: "Overall"
      },
      {
        slug: "marketing",
        displayName: "Marketing"
      },
      {
        slug: "finance",
        displayName: "Finance"
      },
      {
        slug: "customer",
        displayName: "Customer"
      },
      {
        slug: "operation",
        displayName: "Operation"
      }
    ]
  }.to_json
end

get '/services/:service_slug/categories/:category_slug/scores' do
  category_slug = params['category_slug']
  service_slug = params['service_slug']

  {
    scores: scores_dictionary[service_slug][category_slug.to_sym]
  }.to_json
end

get '/services/:service_slug/categories/:category_slug/goals' do
  category_slug = params['category_slug']
  service_slug = params['service_slug']

  {
    goals: goals_dictionary[service_slug][category_slug.to_sym]
  }.to_json
end
