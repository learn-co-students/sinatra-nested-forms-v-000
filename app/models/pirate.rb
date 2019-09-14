class Pirate
  attr_accessor :name, :weight, :height

  ALL_PIRATEZ = []

  def initialize(pirate_hash)
    @name = pirate_hash[:name]
    @weight = pirate_hash[:weight]
    @height = pirate_hash[:height]
    ALL_PIRATEZ << self
  end

  def self.all
    ALL_PIRATEZ
  end

end
