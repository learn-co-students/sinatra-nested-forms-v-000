class Pirate
  attr_accessor :name, :weight, :height
  @@pirates = []

  def initialize(pirate)

    @name = pirate[:name]
    @weight = pirate[:weight]
    @height = pirate[:height]
    save
  end

  def self.all
    @@pirates
  end

  def save
    @@pirates << self
  end

end
