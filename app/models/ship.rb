class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(attr)
    @name = attr[:name]
    @type = attr[:type]
    @booty = attr[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end