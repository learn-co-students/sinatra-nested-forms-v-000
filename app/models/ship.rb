class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end

# The ship class should have name, type, and booty attributes, as well as a class method .all that returns all
# the ships and a class method .clear that deletes all ships.
