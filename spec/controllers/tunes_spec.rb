require 'rails_helper'

RSpec.describe TunesController do
  def tune_params
    {
      name: 'Dusky Night',
      ABCnotation: 'I am a tune'
    }
  end

  after(:each) do
    Tune.delete_all
  end

  describe 'POST create' do
    before(:each) do
      post :create, { tune_data: tune_params }, format: :json
    end

    it 'is successful' do
      expect(response).to be_successful
    end

    it 'renders a JSON response' do
      parsed_response = JSON.parse(response.body)
      expect(parsed_response).not_to be_nil
    end
  end

  describe 'GET index' do
    before(:each) do
      get :index, id: @tune_id, format: :json
    end

    it 'is successful' do
      expect(response).to be_successful
    end

    it 'renders a JSON response' do
      parsed_response = JSON.parse(response.body)
      expect(parsed_response).not_to be_nil
    end
  end

  describe 'GET show' do
    before(:each) do
      get :index, id: @user_id, format: :json
    end

    it 'is successful' do
      expect(response).to be_successful
    end

    it 'renders a JSON response' do
      parsed_response = JSON.parse(response.body)
      expect(parsed_response).not_to be_nil
    end
  end

  describe 'DELETE destroy' do
    before(:each) do
      delete :destroy, id: 1, format: :json
    end

    it 'is successful' do
      expect(response).to be_successful
    end

    it 'renders no response body' do
      expect(response.body).to be_empty
    end
  end

  describe 'PATCH update' do
    def tune_params
      {
        name: 'old time tune',
        ABCnotation: 'new time tune'
      }
    end

    before(:each) do
      patch :update, {
        id: 1,
        tune_data: tune_params
      }, format: :json
    end

    it 'is successful' do
      expect(response).to be_successful
    end

    it 'renders no response body' do
      expect(response.body).to be_empty
    end
  end
end
