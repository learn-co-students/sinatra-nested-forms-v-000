class Pirate
attr_reader :name, :weight, :height
@@all_pirates = []
  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all_pirates << self
  end

  def self.all
    @@all_pirates
  end

  def self.clear
    @@all_pirates = []
  end

end
