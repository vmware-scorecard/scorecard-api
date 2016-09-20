require 'sinatra'
require 'json'
require 'sinatra/cross_origin'
require_relative './data/scores'

include Data::Scores

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
    scores: scores_dictionary[service_slug][category_slug]
  }.to_json
end

get '/services/:service_slug/categories/:category_slug/goals' do
  category_slug = params['category_slug']
  goals_dictionary = {
    'overall' => [
      {
        'date' => '2016-09-26',
        'value' => 80
      },
      {
        'date' => '2016-09-19',
        'value' => 80
      },
      {
        'date' => '2016-09-12',
        'value' => 80
      },
      {
        'date' => '2016-09-05',
        'value' => 80
      },
      {
        'date' => '2016-08-29',
        'value' => 80
      },
      {
        'date' => '2016-08-22',
        'value' => 80
      },
      {
        'date' => '2016-08-15',
        'value' => 80
      },
      {
        'date' => '2016-08-08',
        'value' => 80
      },
      {
        'date' => '2016-08-01',
        'value' => 80
      },
      {
        'date' => '2016-07-25',
        'value' => 80
      },
      {
        'date' => '2016-07-18',
        'value' => 80
      },
      {
        'date' => '2016-07-11',
        'value' => 80
      }
    ],
    'marketing' => [
      {
        'date' => '2016-09-15',
        'value' => 95
      }
    ],
    'finance' => [
      {
        'date' => '2016-09-15',
        'value' => 86
      }
    ],
    'customer' => [
      {
        'date' => '2016-09-15',
        'value' => 89
      }
    ],
    'operation' => [
      {
        'date' => '2016-09-15',
        'value' => 76
      }
    ],
  }

  {
    goals: goals_dictionary[category_slug]
  }.to_json
end
