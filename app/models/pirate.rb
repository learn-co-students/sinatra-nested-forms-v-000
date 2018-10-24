class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(name: name, weight: weight, height: height)
    @name, @weight, @height = name, weight, height
    self.class.all << self
  end

  def self.all
    @@all
  end
end
