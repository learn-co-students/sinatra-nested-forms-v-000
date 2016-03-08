class Ship
  attr_accessor :name, :type, :booty

  @@all = Array.new

  def initialize(name, type, booty)
    self.name = name
    self.type = type
    self.booty = booty
    @@all << self
  end

  def self.all 
    @@all
  end
end