class Pirate

  @@pirates = []

  attr_accessor :name, :weight, :height

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
  end

  def self.all
    @@pirates
  end


end
