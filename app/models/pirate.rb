class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize (params)
    @name = name
    @weight = weight
    @height = height
    PIRATES<< self
  end

  def self.all
    PIRATES
  end

end
