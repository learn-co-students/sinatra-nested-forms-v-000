class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def self.all
    @@all
  end

  def initialize(pirate)
    @name = pirate[:name]
    @weight = pirate[:weight]
    @height = pirate[:height]
    self.class.all << self
  end

end
