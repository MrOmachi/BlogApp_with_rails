require 'rails_helper'

RSpec.describe 'Post', type: :request do 
     describe 'Get post Index' do 
          before :each do 
               get '/users/:user_id/posts/'
          end

          it 'Returns http status of success for post index' do 
               expect(response).to have_http_status(:ok)
          end

     
     end

end