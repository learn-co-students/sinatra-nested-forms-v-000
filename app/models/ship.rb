
class Ship
  attr_accessor :name, :type, :booty
  SHIPS = []
  
  def initialize(args)
    self.name = args[:name]
    self.type = args[:type]
    self.booty = args[:booty]
    self.class.all << self
  end
  
  def self.all
    SHIPS
  end
  
  def self.clear
    all.clear
  end
  
end