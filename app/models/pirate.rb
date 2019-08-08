class Pirate
  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(arg)
    @name = arg[:name]
    @height = arg[:height]
    @weight = arg[:weight]

    @@pirates << self
  end

  def self.all
    @@pirates
  end
end
