class Ship
  attr_accessor :name, :type, :booty
  @@ships = []

  def initialize(input)
    @name = input[:name]
    @type = input[:type]
    @booty = input[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end
