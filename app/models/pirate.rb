class Pirate

  attr_accessor :name, :weight, :height, :ships

  @@all = []

  def initialize(pirate)
    @name = pirate['name']
    @weight = pirate['weight']
    @height = pirate['height']
    @ships = pirate['ships'].map{ |ship| Ship.new(ship) }
    @@all << self
  end

  def self.all
    @@all
  end


end
