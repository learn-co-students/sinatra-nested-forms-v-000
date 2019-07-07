require './environment'

class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end

class Ship
  attr_reader :name, :type, :booty

  SHIPS = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end
end

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |args|
        Ship.new(args)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
