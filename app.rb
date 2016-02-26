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

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end

  class Pirate
    attr_accessor :name, :weight, :height

    @@PIRATES = []

    def initialize(args)
      @name = args[:name]
      @weight = args[:weight]
      @height = args[:height]
      @@PIRATES << self
    end

    def self.all
      @@PIRATES
    end
  end

  class Ship
    attr_accessor :name, :type, :booty

    @@SHIPS = []

    def initialize(args)
      @name = args[:name]
      @type = args[:type]
      @name = args[:booty]
      @@SHIPS << self
    end

    def self.all
      @@SHIPS
    end
  end