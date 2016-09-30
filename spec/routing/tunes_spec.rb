require 'rails_helper'

RSpec.describe 'routes for tunes' do
  it 'routes POST /games to the tunes#create action' do
    expect(post('/tunes')).to route_to('tunes#create')
  end

  it 'routes GET /tunes to the tunes#index action' do
    expect(get('/tunes')).to route_to('tunes#index')
  end
end
