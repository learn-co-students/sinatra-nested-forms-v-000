class Ship
  attr_accessor :name, :booty, :type

  SHIPS = []

  def initialize(name, booty, type)
    @name = name
    @booty = booty
    @type = type
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
