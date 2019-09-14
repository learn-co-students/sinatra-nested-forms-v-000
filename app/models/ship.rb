class Ship
  attr_accessor :name, :type, :booty

  ALL_SHIPZ = []

  def initialize(ship_hash)
    @name = ship_hash[:name]
    @type = ship_hash[:type]
    @booty = ship_hash[:booty]
    ALL_SHIPZ << self
  end

  def self.all
    ALL_SHIPZ
  end

  def self.clear
    self.all.clear
  end


end
