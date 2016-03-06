class Pirate

  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(pirate)
    @name = ship[:name]
    @weight = ship[:wight]
    @height = ship[:height]
    PIRATES << self
  end

  def self.all?
    PIRATES
  end

end