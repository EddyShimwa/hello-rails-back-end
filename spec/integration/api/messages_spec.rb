require 'swagger_helper'

RSpec.describe 'api/messages', type: :request do
    describe 'GET /index' do
        it 'returns a list of messages' do
          # Add your expectations here
          get '/api/v1/messages'
          expect(response).to have_http_status(200)
          expect(JSON.parse(response.body)).to be_an(Array)
          # Add more expectations as needed
        end
      end
      
end
