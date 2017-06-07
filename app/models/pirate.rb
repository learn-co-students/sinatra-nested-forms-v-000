class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def self.all
    @@all
  end

  def initialize(arguments)
    @name = arguments[:name]
    @weight = arguments[:weight]
    @height = arguments[:height]
    @@all << self
  end
end
