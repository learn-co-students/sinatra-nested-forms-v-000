class Pirate
  
  attr_reader :name, :weight, :height
  
  PIRATES = []
  
  def initialize(info)
    @name = info[:name]
    @weight = info[:weight]
    @height = info[:height]
    PIRATES << self  
  end
  
  def self.all
    PIRATES
  end
  
end