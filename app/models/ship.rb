class Ship
  attr_accessor :name, :type, :booty
  @@ships = []

  def initialize(ship)
    @name = ship[:name]
    @type = ship[:type]
    @booty = ship[:booty]
    save
  end

  def self.all
    @@ships
  end

  def save
    @@ships << self
  end

  def self.clear
    @@ships = []
  end

end
