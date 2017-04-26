class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(name, type, height)
    @name = name
    @type = type
    @height = height
    @@all << self
  end

  def self.all
    @@all
  end
end
