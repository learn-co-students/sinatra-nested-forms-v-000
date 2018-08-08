class Pirate
  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(args)
    @name = args[:name]
    @height = args[:height]
    @weight = args[:weight]
    @@pirates << self
  end

  def self.all
    @@pirates
  end

  def self.clear
    @@pirates = []
  end
end
