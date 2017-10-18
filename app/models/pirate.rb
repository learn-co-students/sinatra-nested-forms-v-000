class Pirate #has many ships
  attr_accessor :name, :weight, :height, :ships
  @@all = []

  def initialize(pirate_details) #passes in params hash

    @name = pirate_details[:name]
    @height = pirate_details[:height]
    @weight = pirate_details[:weight]
    @ships = pirate_details[:ships]
    @@all << self
  end

  def self.all
    @@all
  end

end
