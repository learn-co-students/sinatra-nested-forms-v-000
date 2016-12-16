class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end

  def initialize(ship)
    @name = ship[:name]
    @type = ship[:type]
    @booty = ship[:booty]
    self.class.all << self
  end

end
