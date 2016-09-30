require 'rails_helper'

RSpec.describe 'routes for tunes' do
  it 'routes POST /games to the tunes#create action' do
    expect(post('/tunes')).to route_to('tunes#create')
  end
end
