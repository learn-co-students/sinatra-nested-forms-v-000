class Ship

  attr_accessor :name, :type, :booty

  ship = []

  def initialize
    @name = name
    @type = type
    @booty = booty
    ship << self
  end

  def self.all
    ship
  end

  def self.clear
    ship.clear
  end

end
