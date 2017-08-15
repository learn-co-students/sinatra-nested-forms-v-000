class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(data)
    @name = data[:name]
    @type = data[:type]
    @booty = data[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end
