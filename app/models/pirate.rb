class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(arg)
    @name = arg[:name]
    @weight = arg[:weight]
    @height = arg[:height]
    @@all<<self
  end

  def self.all
    @@all
  end

end
