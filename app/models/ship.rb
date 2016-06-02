class Ship
  attr_accessor :name, :type, :booty
  @@ships = []
  def initialize(info)
    @name = info[:name]
    @type = info[:type]
    @booty = info[:booty]
    @@ships << self
  end
  def self.all
    @ships
  end
  def self.clear
    @@ships = []
  end
end
