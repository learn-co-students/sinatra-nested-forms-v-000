#============================================== 
class Ship
#=================properties=================== 
  attr_accessor :name, :type, :booty
  SHIPS = []; def self.all; SHIPS; end
#=================intialize==================== 
  def initialize(a) 
    @name = a[:name]
    @type = a[:type]
    @booty = a[:booty] 
    SHIPS << self
  end
  
  def self.clear
    SHIPS.clear
  end
#============================================== 
end
