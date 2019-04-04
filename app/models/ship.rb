require 'pry'
class Ship
  attr_reader :name, :type, :booty

  @@all_ships = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]

    @@all_ships << self
  end

  def self.all
    @@all_ships
  end
end
