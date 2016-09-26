class Pirate

  attr_accessor :ships, :name, :weight, :height, :id

  @@pirates = []
  @@id = 1

  def initialize(hash)
    self.name = hash[:name]
    self.weight = hash[:weight]
    self.height = hash[:height]
    self.ships = []
    self.id = @@id
    @@id += 1
  end

  def self.all
    @@pirates
  end

end
