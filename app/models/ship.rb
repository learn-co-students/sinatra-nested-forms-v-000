class Ship
  #The ship class should have name, type, and booty attributes, as well as a class method .all that returns all the ships and a class method .clear that deletes all ships.

  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(arg)
    @name = arg[:name]
    @type = arg[:type]
    @booty = arg[:booty]

    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end

end
