class Ship
  attr_reader :name, :type, :booty

  SHIPS = []

  def initialize(ship)
    @name = ship[:name]
    @type = ship[:type]
    @booty = ship[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end
end
