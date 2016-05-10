class Ship

  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(stuff)
    @name = stuff[:name]
    @type = stuff[:type]
    @booty = stuff[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end