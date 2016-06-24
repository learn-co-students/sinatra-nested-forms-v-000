class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(arges)
    @name = arges[:name]
    @type = arges[:type]
    @booty = arges[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end
end
