class Pirate
  attr_accessor :name, :weight, :height
  @@all = Array.new

  def initialize(name, weight, height)
    self.name = name
    self.weight = weight
    self.height = height
    @@all << self
  end

  def self.all 
    @@all
  end
end