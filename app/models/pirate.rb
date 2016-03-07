class Pirate
  @@all = []

  attr_accessor :name, :weight, :height, :ships

  def initialize(pirate)
    @name = pirate[:name]
    @weight = pirate[:weight]
    @height = pirate[:height]
    @ships = pirate[:ships]
    @@all << self
  end

  def self.all 
    @@all 
  end

end