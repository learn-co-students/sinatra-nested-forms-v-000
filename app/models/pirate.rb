class Pirate
  attr_accessor :name, :weight, :height

  @@all_pirates = Array.new

  def initialize(param)
    @name = param[:name]
    @weight = param[:weight]
    @height = param[:height]
  end

  def self.all
    @@all_pirates
  end

  def self.clear
    @@all_pirates.clear
  end
end
