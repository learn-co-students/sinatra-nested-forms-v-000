class Ship
  attr_accessor :name, :type, :booty_attributes

  SHIPS = []

  def initialize(details)
    @name = details[:name]
    @type = details [:type]
    @booty_attributes = details[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end