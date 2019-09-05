class Ship
  attr_accessor :name, :type, :booty

  @@all_ships = []

  def initialize(arguments)
    @name = arguments[:name]
    @type = arguments[:type]
    @booty = arguments[:booty]

    @@all_ships << self
  end

  def self.all
    @@all_ships
  end

  def self.clear
    @@all_ships.clear
  end
end
