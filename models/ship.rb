class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(name, type, booty)
    @name = name
    @weight = type
    @height = booty
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end
