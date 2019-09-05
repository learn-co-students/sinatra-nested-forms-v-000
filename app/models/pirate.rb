class Pirate
  attr_accessor :name, :weight, :height

  @@all_pirates = []

  def initialize(arguments)
    @name = arguments[:name]
    @weight = arguments[:weight]
    @height = arguments[:height]

    @@all_pirates << self
  end

  def self.all
    @@all_pirates
  end
end
