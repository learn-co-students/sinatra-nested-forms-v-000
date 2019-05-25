class Pirate
  attr_accessor :name, :height, :weight

  PIRATES = []

  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end

