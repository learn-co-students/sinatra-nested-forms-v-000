require './environment'

module FormsLab
  class App < Sinatra::Base


        get '/' do
            erb :index
        end

        get '/new' do
            erb :'pirates/new'
        end

        post '/pirates' do
            Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height] )

            params[:pirate][:ships].each do |ship|
                Ship.new(ship[:name], ship[:type], ship[:booty])
            end


            erb :'pirates/show'
        end
  end
end
