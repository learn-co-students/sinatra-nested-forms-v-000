class Pirate
  attr_accessor :name, :weight, :height
  @@pirates = []

  def initialize(arg)
    @name, @weight, @height = arg[:name], arg[:weight], arg[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end

end
