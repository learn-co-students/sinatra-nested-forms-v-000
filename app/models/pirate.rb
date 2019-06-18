class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(pirate_info)
    @name = pirate_info[:name]
    @weight = pirate_info[:weight]
    @height = pirate_info[:height]

    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
