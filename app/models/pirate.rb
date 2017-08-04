# Create two classes, a Pirate class and a Ship class. Pirates should have 
# a name, weight, and height. You will also need a class method that returns 
# all the pirates. 
class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all << self
    self
  end

  def self.all
    @@all
  end
end