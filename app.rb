require './environment'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:name], params[:height], params[:weight])
      @ship = Ship.new(params[:name], params[:type], params[:booty])
      erb :show
    end
  end
end
