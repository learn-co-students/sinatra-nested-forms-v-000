class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize (args)
    @name = args[:name]
    @weight = args[:weight]
    @heigth = args[:heigth]
    @@all << self
  end

  def all
    @@all
  end

  def self.clear
    self.all.clear
  end
end
