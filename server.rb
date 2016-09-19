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
    'overall' => [
      {
        'date' => '2016-09-26',
        'value' => 86
      },
      {
        'date' => '2016-09-19',
        'value' => 89
      },
      {
        'date' => '2016-09-12',
        'value' => 88
      },
      {
        'date' => '2016-09-05',
        'value' => 85
      },
      {
        'date' => '2016-08-29',
        'value' => 80
      },
      {
        'date' => '2016-08-22',
        'value' => 73
      },
      {
        'date' => '2016-08-15',
        'value' => 72
      },
      {
        'date' => '2016-08-08',
        'value' => 75
      },
      {
        'date' => '2016-08-01',
        'value' => 78
      },
      {
        'date' => '2016-07-25',
        'value' => 84
      },
      {
        'date' => '2016-07-18',
        'value' => 82
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
    scores: scores_dictionary[category_slug]
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
