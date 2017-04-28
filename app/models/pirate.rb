class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(hash)
    @name, @weight, @height = hash[:name], hash[:weight], hash[:height]
    @@all << self
  end

  def self.all
    @@all
  end
end
