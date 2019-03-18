require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/pirates/:id' do
      @pirates = Pirate.find(params[:id])
      erb :'pirates'
    end


    post '/pirates/new' do
      erb :'pirates/new'
    end




end
