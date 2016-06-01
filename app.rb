
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
      erb :'pirates/show'
    end

    class Pirate
      attr_accessor :name, :weight, :height
      PIRATES = []

      def initialize(name, weight, height)
        @name = name
        @weight = weight 
        @height = height 
        PIRATES << self 
      end

      def self.all
        PIRATES
      end
    end

    class Ship
      attr_accessor :name, :type, :booty 
      SHIPS = []

      def initialize(name, type, booty)
        @name = name 
        @type = type
        @booty = booty 
        SHIPS << self
      end

      def self.all
        SHIPS
      end
    end

  end
end