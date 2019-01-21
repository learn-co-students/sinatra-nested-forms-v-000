class Ship
  
  attr_accessor :name, :type, :booty 
  @@all = [] 
  
  def initialize(args) 
    @@all << self
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.clear 
    @@all = []
  end 
  
end