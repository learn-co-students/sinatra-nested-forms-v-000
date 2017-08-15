class Pirate

  attr_accessor :name, :weight, :height, :ships

  PIRATES = []

  def initialize(pirate)
    @name = pirate[:name]
    @weight = pirate[:weight]
    @height = pirate[:height]

    @ships = pirate[:ships].map { |ship| Ship.new(ship) }

    PIRATES << self
  end

  def self.all
    PIRATES
  end

  def self.clear
    PIRATES.clear
  end

end
