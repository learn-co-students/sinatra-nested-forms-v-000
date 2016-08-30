class Pirate
  attr_accessor :name, :height, :weight

  @@all = []

  def initialize(args)
    @name = args[:name]
    @height = args[:weight]
    @weight = args[:height]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end