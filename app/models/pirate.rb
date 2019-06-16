
class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []
  
  def initialize(args)
    self.name = args[:name]
    self.weight = args[:weight]
    self.height = args[:height]
    self.class.all << self
  end
  
  def self.all 
    PIRATES
  end
  
end