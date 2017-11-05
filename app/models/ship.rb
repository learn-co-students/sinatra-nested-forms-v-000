# The ship class should have name, type, and booty attributes, as well as a
# class method `.all` that returns all the ships and a class method `.clear` that deletes all ships.
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

  def self.clear
    SHIPS.reset
  end
end
