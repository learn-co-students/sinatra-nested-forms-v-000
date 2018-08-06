class Ship
  
  # name, type, booty
  
  attr_accessor :name, :type, :booty
  
  @@all = []
  
  def initialize(ship)
    # binding.pry
    @name = ship[:name]
    @type = ship[:type]
    @booty = ship[:booty]
    @@all << self
  end
    
  def self.all 
    @@all
  end
  
  def self.clear
    @@all.clear
  end
    
end