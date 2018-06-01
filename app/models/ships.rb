class Ship

  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @booty = attributes[:booty]

    SHIPS << self
  end #initialize


  def self.all
    SHIPS
  end #.all

  def self.clear
    self.all.clear
  end #.clear

end #Ship class
