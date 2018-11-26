class Ship
  attr_accessor :name, :type, :booty, :pirate

  @@all_ships = []

  def self.all
    all_ships
  end

  def self.clear
    all_ships = []
  end

  def initialize
    @@all_ships << self
  end
end
