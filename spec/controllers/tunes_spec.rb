require 'rails_helper'

RSpec.describe TunesController do
  def tune_params
    {
      name: 'Dusky Night',
      ABCnotation: 'I am a tune'
    }
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
end
