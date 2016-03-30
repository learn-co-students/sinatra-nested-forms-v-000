class Ship
  attr_accessor :name, :type, :booty
  
  SHIPS = []
  
  def initialize(args)
    self.name = args[:name]
    self.type = args[:type]
    self.booty = args[:booty]
    SHIPS << self
  end
  
  def self.all
    SHIPS
  end
end