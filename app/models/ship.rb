class Ship

  @@ships = []

  attr_accessor :name, :type, :booty

  def initialize(ship_detail)
    @name = ship_detail[:name]
    @type = ship_detail[:type]
    @booty = ship_detail[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end

end
