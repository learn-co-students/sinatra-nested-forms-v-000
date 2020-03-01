class Pirate

  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(str)
    @name = str[:name]
    @weight = str[:weight]
    @height = str[:height]
    @@all << self
  end

  def self.all
    @@all
  end
end
