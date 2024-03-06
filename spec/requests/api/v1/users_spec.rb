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

  describe 'POST #create' do
    context 'with valid parameters' do
      let(:valid_params) { { user: attributes_for(:user) } }

      it 'creates a new User' do
        expect { post api_v1_users_path, params: valid_params }.to change(User, :count).by(1)
      end

      it 'returns a :created status' do
        post api_v1_users_path, params: valid_params
        expect(response).to have_http_status(:created)
      end
    end

    context 'with invalid parameters' do
      let(:invalid_params) { { user: attributes_for(:user, email: @user.email) } }

      it 'does not create a new User' do
        expect { post api_v1_users_path, params: invalid_params }.not_to change(User, :count)
      end

      it 'returns a :unprocessable_entity status' do
        post api_v1_users_path, params: invalid_params
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH #update' do
    context 'with valid parameters' do
      let(:new_attributes) { { user: { email: @user.email, password: '123456' } } }

      before do
        patch api_v1_user_path(@user), params: new_attributes
      end

      it 'updates the user' do
        @user.reload
        expect(@user.authenticate('123456')).to be_truthy
      end

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end
    end

    context 'with invalid parameters' do
      let(:invalid_attributes) { { user: { email: 'bad_email', password: '123456' } } }

      before do
        patch api_v1_user_path(@user), params: invalid_attributes
      end

      it 'does not update the user' do
        @user.reload
        expect(@user.email).not_to eq('bad_email')
      end

      it 'returns a :unprocessable_entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'should destroy User' do
      expect { delete api_v1_user_path(@user), as: :json }.to change(User, :count).by(-1)

      expect(response).to have_http_status(:no_content)
    end
  end
end
