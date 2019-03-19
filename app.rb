require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/pirates/:id' do
      @pirates = Pirate.find(params[:id])
      erb :'pirates'
    end


    get '/pirates/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirates = Pirates.new(params[pirates])
      params[:pirates][ships].each do |details|
        Ships.new(details)
      erb :ship
    end


end
