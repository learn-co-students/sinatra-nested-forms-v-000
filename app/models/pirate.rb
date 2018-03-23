class Pirate

  attr_accessor :name, :weight, :height
  @@pirates = []

  def initialize(name=nil, weight=nil, height=nil)
    @name = name
    @weight = weight
    @height = height
    @@pirates << self
  end

  def self.all
    @@pirates
  end

  def self.clear
    @@pirates.clear
  end
end
