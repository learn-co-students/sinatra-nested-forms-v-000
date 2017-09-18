class Pirate

  @@pirates = []
  attr_accessor :name, :weight, :height

  def initialize(input)
    @name = input[:name]
    @weight = input[:weight]
    @height = input[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end

  def self.clear
    @@pirates = []
  end

end
