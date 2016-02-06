require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        #binding.pry
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :"pirates/show"
    end
  end


  class Pirate
    attr_accessor :name, :height, :weight
    PIRATES = []

    def initialize(params)
      @name = params[:name]
      @height = params[:height]
      @weight = params[:weight]
      PIRATES << self
    end

    def self.all
      PIRATES
    end
  end


  class Ship
    attr_accessor :name, :type, :booty

    SHIPS = []

    def initialize(args)
      #binding.pry
      @name = args[:name]
      @type = args[:type]
      @booty = args[:booty]
      SHIPS << self
    end

    def self.all
      SHIPS
    end
  end
end
