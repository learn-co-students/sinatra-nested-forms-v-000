class Pirate
  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    PIRATES << self
  end

  def self.all
    @@pirates
  end
end
