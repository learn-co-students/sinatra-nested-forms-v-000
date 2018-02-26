#============================================== 
class Pirate
#=================properties=================== 
  attr_accessor :name, :weight, :height
  PIRATES = []; def self.all; PIRATES; end
#=================intialize==================== 
  def initialize(a)
    @name = a[:name]
    @weight = a[:weight]
    @height = a[:height]
    PIRATES << self
  end
  
  def self.clear
    PIRATES.clear
  end
#============================================== 
end

