class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(pirate)
    @name = pirate[:name]
    @weight = pirate[:weight]
    @height = pirate[:height]
    #@name, @weight, @height = name, weight, height
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end


end