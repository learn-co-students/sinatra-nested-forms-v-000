class Pirate
  attr_accessor :name, :weight, :height
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all.clear
  end
  
  def initialize(info)
    @name = info[:name]
    @weight = info[:weight]
    @height = info[:height]
    @@all << self
  end
  
end