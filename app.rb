require './environment'
# require_relative 'models/pirate.rb'
# require_relative 'models/ship.rb'

class Pirate

  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @ships = params[:ships]
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

    # code other routes/actions here
    get '/' do  
      erb :'pirates/index'
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
