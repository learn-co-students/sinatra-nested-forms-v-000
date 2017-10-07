class Ship
  #The ship class should have name, type, and booty attributes,
  #as well as a class method .all that returns all the ships and a class method .clear that deletes all ships.
  attr_accessor :name, :type, :booty
  SHIPS = []

  def initialize(name, type, booty)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
