require './environment'
require 'pry'

module FormsLab

  class App < Sinatra::Base
    set :views, settings.root + '/views/pirates'

    get '/' do
      erb :new
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
          @new_pirate = Pirate.new(params[:pirate])

            # params[:pirate][:ships].each do |details|

            @name = params[:pirate][:ships][0][:name].to_s
            @type = params[:pirate][:ships][0][:type].to_s
            @booty = params[:pirate][:ships][0][:booty].to_s
              Ship.new(@name, @type, @booty)
              @name = params[:pirate][:ships][1][:name].to_s
              @type = params[:pirate][:ships][1][:type].to_s
              @booty = params[:pirate][:ships][1][:booty].to_s
              Ship.new(@name, @type, @booty)

            # end
          @ships = Ship.all

          erb :show
      end

    end

end
