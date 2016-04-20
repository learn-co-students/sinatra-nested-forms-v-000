class Pirate
   attr_accessor :name, :weight, :height

  PIRATES = []

  def initialize(attr)
    @name = attr[:name]
    @weight = attr[:weight]
    @height = attr[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end