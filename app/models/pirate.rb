class Pirate
  attr_accessor :name, :weight, :height

  Pirates = []

  def initialize(pirate_details)
    @name = pirate_details[:name]
    @weight = pirate_details[:weight]
    @height = pirate_details[:height]
    Pirates << self
  end

  def self.all
    Pirates
  end
end
