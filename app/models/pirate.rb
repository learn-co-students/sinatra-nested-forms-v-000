class Pirate

  attr_accessor :name, :weight, :height

  @@all = Array.new
  def initialize(name, weight, height )
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = Array.new
  end
end
