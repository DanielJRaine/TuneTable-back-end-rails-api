require 'rails_helper'

RSpec.describe 'routes for tunes' do
  it 'routes POST /games to the tunes#create action' do
    expect(post('/tunes')).to route_to('tunes#create')
  end

  it 'routes GET /tunes to the tunes#index action' do
    expect(get('/tunes')).to route_to('tunes#index')
  end

  it 'routes GET /tunes/:id to the tunes#show action' do
    expect(get('/tunes/1')).to route_to(
      controller: 'tunes',
      action: 'show',
      id: '1'
    )
  end

  it 'routes PATCH /tunes/:id to the tunes#update action' do
    expect(patch('/tunes/1')).to route_to(
      controller: 'tunes',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /tunes/:id to the tunes#destroy action' do
    expect(delete('/tunes/1')).to route_to(
      controller: 'tunes',
      action: 'destroy',
      id: '1'
    )
  end
end
