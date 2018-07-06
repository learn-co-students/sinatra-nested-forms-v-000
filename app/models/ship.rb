class Ship
  attr_accessor :name, :type, :booty

  @@all_ships = Array.new

  def initialize(param)
    @name = param[:name]
    @type = param[:type]
    @booty = param[:booty]
  end

  def self.all
    @@all_ships
  end

  def self.clear
    @@all_ships.clear
  end
end
