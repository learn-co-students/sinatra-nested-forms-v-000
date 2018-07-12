# have a name, weight, and height. You will also need a class method that returns all

class Pirate
  attr_accessor :name, :weight, :height
  @@all = []
  
  def self.all 
    @@all
  end
  
end