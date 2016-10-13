class Pirate
  attr_accessor :name, :weight, :height

  PIRATES = []

  def self.all
    PIRATES
  end

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    PIRATES << self
  end

end
