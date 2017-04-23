class Ship
  attr_accessor :name, :type, :booty
  @@ships = []

  def initialize(ship_info)
    @name = ship_info[:name]
    @type = ship_info[:type]
    @booty = ship_info[:booty]
    self.class.all << self
  end

  def self.all
    @@ships
  end

  def self.clear
    all.clear
  end
end
