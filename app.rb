require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/pirates/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params)
      #params[:pirate][:ships].each do |key,value|
      #  Ship.new(value)
      #rspecend
      erb :show
    end
  end
end
