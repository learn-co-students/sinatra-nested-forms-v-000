class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []; def self.all; SHIPS; end

  def initialize(char)
    @name = char[:name]
    @type = char[:type]
    @booty = char[:booty]
    SHIPS << self
  end

  def self.clear; SHIPS.clear; end
end
