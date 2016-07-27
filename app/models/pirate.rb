class Pirate

  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@pirates << self
  end

  def self.all
    @@pirates
  end

  def self.clear
    @@pirates.clear
  end
end
