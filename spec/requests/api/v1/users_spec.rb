require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do
  before do
    @user = FactoryBot.create(:user)
  end

  describe "GET #show" do
    before do
      get api_v1_user_path(@user), as: :json
      @json_response = JSON.parse(response.body)
    end
    
    it 'return https success' do
      expect(response).to have_http_status(:success)
    end
    
    it 'JSON body response contains expected user email' do 
      expect(@json_response['email']).to eq(@user.email)
    end
  end
end
