require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    get '/pirate/:id' do
      @pirate = Pirates.find(params[:id])
      erb :'pirates/show'
    end

    post '/pirates' do
      # pirate_attr = {}
      # params[:pirate].each {|key, value| pirate_attr[key.to_s] = value if key.to_s != :ships}

      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship|
        ship = Ship.new(ship)
        ship.pirate = @pirate
        ship.save
      end
      erb :'pirates/show'
    #  redirect 'pirates/#{pirate.id}'
    end

  end
end
