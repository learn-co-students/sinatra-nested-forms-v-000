class Pirate

  attr_accessor :name, :height, :weight, :ships

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end

  def initialize(pirate)
    @name = pirate[:name]
    @height = pirate[:height]
    @weight = pirate[:weight]
    @ships = [
      Ship.new(pirate[:ships][0]),
      Ship.new(pirate[:ships][1])
    ]
    self.class.all << self
  end

end