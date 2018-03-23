class Ship

  attr_accessor :name, :type, :booty

  @@ship = []

  def initialize(name, type=nil, booty=nil)
    @name = name
    @type = type
    @booty = booty
    @@ship << self
  end

  def self.all
    @@ship
  end

  def self.clear
    @@ship.clear
  end

end
