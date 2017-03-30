class Ship

  attr_reader :name, :type, :booty

  def initialize(info)
    @name = info[:name]
    @type = info[:type]
    @booty = info[:booty]
    SHIPS << self
  end

  SHIPS = []

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end
