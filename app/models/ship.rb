class Ship
  attr_reader :name, :type, :booty

  SHIPS = []

  def initialize(ship_info)
    @name = ship_info[:name]
    @type = ship_info[:type]
    @booty = ship_info[:booty]

    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end
