class Ship
  attr_reader :name, :type, :booty
  @@all_ships  = []

  def initialize(details)
    @name = details[:name]
    @type = details[:type]
    @booty = details[:booty]

    @@all_ships << self
  end

  def self.all
    @@all_ships
  end

  def self.clear
    @@all_ships.clear
  end
end
