class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    save
  end

  def save
    @@ships << self
    @@ships
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end

end
