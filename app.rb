require './environment'

module FormsLab
  class App < Sinatra::Base

  get '/' do
    erb :root
  end

  get '/new' do
    erb :'/pirates/new'
  end

  post '/pirates' do
    # binding.pry
    @pirate = params['pirate']['name']
    @pirate_weight = params['pirate']['weight']
    @pirate_height = params['pirate']['height']
    @first_ship = params['pirate']['ships'][0]['name']
    @first_type = params['pirate']['ships'][0]['type']
    @first_booty = params['pirate']['ships'][0]['booty']
    @second_ship = params['pirate']['ships'][1]['name']
    @second_type = params['pirate']['ships'][1]['type']
    @second_booty = params['pirate']['ships'][1]['booty']
    erb :'/pirates/show'
  end

  end
end
