class Ship
  attr_reader :name, :type, :booty
  
  @@all_ships = []
  
  def initialize(hash)
    hash.each {|k,v| self.send("#{k}=", v)}
  end
  
  def self.all
    @@all_ships
  end
end