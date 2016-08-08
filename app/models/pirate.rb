class Pirate
  attr_accessor :name, :height, :weight

  PIRATES = []

  def initialize(name, height, weight)
    @name = name
    @weight = weight
    @height = height
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
