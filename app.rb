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
      @@all = []

      def initialize(name, weight, height)
        @name = name
        @weight = weight 
        @height = height 
        @@all << self 
      end

      def self.all
        @@all
      end
    end

    class Ship
      attr_writer :name, :type, :booty 
      @@all = []

      def initialize(name, type, booty)
        @name = name 
        @type = type
        @booty = booty 
        @@all << self
      end

      def self.all
        @@all
      end
    end

  end
end