class Ship
  attr_accessor :name, :type, :booty
  @@pirate_ships = []
  
  def initialize(ship_specs)
    ship_specs.each do |key, value|
      self.send("#{key}=", value)
    end 
    
    @@pirate_ships << self
  end
  
  def self.all 
    @@pirate_ships
  end
  
  def self.clear
    @@pirate_ships = []
    # self.all.clear should work as well.
  end
end

# class Klass
#   @@all = []
#   
#   def initialize
#     @@all << self
#   end 
#   
#   def self.all
#     @@all 
#   end 
#   
#   def self.clear
#     self.all.clear
#   end
# end