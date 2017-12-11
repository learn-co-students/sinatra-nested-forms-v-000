class Pirate

  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(name, weight, height)
    @name = name
    @height = height
    @weight = weight
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
