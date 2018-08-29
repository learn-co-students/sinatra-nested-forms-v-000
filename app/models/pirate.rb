class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(details)
    @name = details[:name]
    @weight = details[:weight]
    @height = details[:height]
    @@all << self
  end

  def self.clear
  end

  def self.all
    @@all
  end

end
