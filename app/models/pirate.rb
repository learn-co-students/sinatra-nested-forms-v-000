class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(attrib_hash)
    @name = attrib_hash[:name]
    @weight = attrib_hash[:weight]
    @height = attrib_hash[:height]
    @@all << self
  end

  def self.all
    @@all
  end
end
