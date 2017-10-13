class Pirate

  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(pirate_details)
    @name = pirate_details[:name]
    @weight = pirate_details[:weight]
    @height = pirate_details[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
