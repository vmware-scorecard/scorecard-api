require 'sinatra'
require 'json'

before do
  content_type 'application/json'
end

get '/services' do
  {
    services: [
      {
        slug: "hybrid-cloud",
        displayName: "Hybrid Cloud"
      },
      {
        slug: "disaster-recovery",
        displayName: "Disaster Recovery"
      },
      {
        slug: "cloud-discovery",
        displayName: "Cloud Discovery"
      }
    ]
  }.to_json
end

get '/services/:service_slug/categories/:category_slug/scores' do
  category_slug = params['category_slug']
  scores_dictionary = {
    'overall'=> [
      {
        'date' => '2016-09-15',
        'value' => 88
      }
    ],
    'marketing'=> [
      {
        'date' => '2016-09-15',
        'value' => 95
      }
    ],
    'finance'=> [
      {
        'date' => '2016-09-15',
        'value' => 86
      }
    ],
    'customer'=> [
      {
        'date' => '2016-09-15',
        'value' => 89
      }
    ],
    'operation'=> [
      {
        'date' => '2016-09-15',
        'value' => 76
      }
    ],
  }

  {
    scores: scores_dictionary[category_slug]
  }.to_json
end
