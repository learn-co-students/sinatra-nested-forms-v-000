class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(attributes)
    @name = attributes[:name]
    @height = attributes[:height]
    @weight = attributes[:weight]
    @@all << self
  end

  def self.all
    @@all
  end
end
