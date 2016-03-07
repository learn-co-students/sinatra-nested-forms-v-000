class Ship
  @@all = []
  
  attr_accessor :name, :type, :booty

  def initialize(ship)
    @name = ship[:name]
    @type = ship[:type]
    @booty = ship[:booty]
    @@all << self
  end

  def self.all 
    @@all 
  end
end