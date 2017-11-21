class Ship

  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(pirates = {})
    @name = pirates[:name]
    @type = pirates[:type]
    @booty = pirates[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end
