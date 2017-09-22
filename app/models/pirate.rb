class Pirate
  attr_accessor :name, :weight, :height

  PIRATES = Array.new

  def initialize(details)
    @name = details[:name]
    @weight = details[:weight]
    @height = details[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
