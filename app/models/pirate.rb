class Pirate
  attr_accessor :name, :height, :weight

  PIRATES = []

  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @height = hash[:height]

    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
