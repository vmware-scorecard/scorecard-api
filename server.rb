require 'sinatra'
require 'json'

get '/services' do
  content_type :json

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

