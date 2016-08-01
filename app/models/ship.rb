class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(params)
    @name = name
    @type = type
    @booty = booty
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end

end
