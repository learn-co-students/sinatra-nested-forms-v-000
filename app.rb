require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do 
      @pirate = params
      erb:'pirates/show'
    end

    class Pirate
      attr_writer :name, :weight, :height
      PIRVATE = []

      def initialize(name, weight, height)
        @name = name
        @weight = weight 
        @height = height 
        PIRVATE << self 
      end

      def self.all
        PIRVATE
      end
    end

    class Ship
      attr_writer :name, :type, :booty 
      SHIP = []

      def initialize(name, type, booty)
        @name = name 
        @type = type
        @booty = booty 
        SHIP << self
      end

      def self.all
        SHIP
      end
    end

  end
end
