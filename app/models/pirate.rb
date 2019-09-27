class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def self.all
    @@all
  end

  def initialize(hash)
    self.name = hash[:name]
    self.weight = hash[:weight]
    self.height = hash[:height]
  end
end
