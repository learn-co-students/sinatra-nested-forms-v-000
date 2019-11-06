class Ship
  attr_accessor :name, :type, :booty
  Ships = []

  def initialize(ship_details)
    @name = ship_details[:name]
    @type = ship_details[:type]
    @booty = ship_details[:booty]
    Ships << self
  end

  def self.all
    Ships
  end

  def self.clear
    Ships.clear
  end

end
