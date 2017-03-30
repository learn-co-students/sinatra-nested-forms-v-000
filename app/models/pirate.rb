class Pirate

  attr_reader :name, :weight, :height

  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @height = hash[:height]
    PIRATES << self
  end

  PIRATES = []

  def self.all
    PIRATES
  end



end
