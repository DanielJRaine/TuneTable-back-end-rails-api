require 'rails_helper'
# We will parse an ABC file on the backend to find key, meter, etc.
# Don't worry about supplying all details on the Front-end.
# score = `T: Dusky Night
# S: Thompson 1777
# N: From Apted Book of Country Dances
# N: abc version by Robert Bley-Vroman vroman@hawaii.edu 14 October 1996
# M: 6/8
# L: 1/8
# K:D
# |: A | d2d A2G  | F>EF D2A | B2A G2F | F3   E2E  |
#        A2 A B2B | c>Bc A2A | d2d e2e | f>ef d2F |
#       B>cd e>fg | A>Bc d2A | B2B A>GA | D3-D2  :|
# |: F/D/ | A2A  A2A | A3-A2  B/A/ | d2d d>ef | d3-d2 A |
#           B>cd e>fg| A>Bc d2A | B2G A2A  | D3-D2 :|`
 #
 # "X: 1\nT: Dusky Night\nS: Thompson 1777\nN: From Apted Book of Country Dances\nN: abc version by Robert Bley-Vroman vroman@hawaii.edu 14 October 1996\nM: 6/8\nL: 1/8\nK:D\n|: A | d2d A2G  | F>EF D2A | B2A G2F | F3   E2E  |\n       A2 A B2B | c>Bc A2A | d2d e2e | f>ef d2F |\n      B>cd e>fg | A>Bc d2A | B2B A>GA | D3-D2  :|\n|: F/D/ | A2A  A2A | A3-A2  B/A/ | d2d d>ef | d3-d2 A |\nB>cd e>fg| A>Bc d2A | B2G A2A  | D3-D2 :|"

RSpec.describe 'Tune API' do
  def tune_params
    {
      name: 'Dusky Night',
      ABCnotation: 'I am a tune'
    }
  end

  after(:all) do
    Tune.delete_all
  end

  before(:all) do
    post '/tunes', tune_data: tune_params
  end

  describe 'GET /tunes' do
    it 'is successful' do
      get '/tunes'

      expect(response).to be_success

      parsed_response = JSON.parse(response.body)
      expect(
        parsed_response['tunes']
      ).not_to be_empty
    end
  end

  describe 'POST /tunes' do
    it 'creates a new tune' do
      post '/tunes', tune_data: tune_params

      expect(response).to be_success
      parsed_response = JSON.parse(response.body)
      expect(
        parsed_response['tune']['name']
      ).to eq(tune_params[:name])
      expect(
        parsed_response['tune']['name']
      ).not_to be_empty
    end
  end

  before(:each) do
    post '/tunes', tune_data: tune_params
  end
end
