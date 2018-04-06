class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(args)
    #What will be passed in here?  A nested form or just a regular hash?
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]

    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
