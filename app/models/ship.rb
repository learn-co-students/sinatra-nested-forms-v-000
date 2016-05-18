class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def self.all
    SHIPS
  end

  def initialize(details)
    @name = details[:name]
    @type = details[:type]
    @booty = details[:booty]
    SHIPS << self
  end

  def self.clear
    SHIPS.clear
  end


end


