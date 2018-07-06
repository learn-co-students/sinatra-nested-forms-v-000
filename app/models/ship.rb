class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(atr)
    @name = art[:name]
    @type = atr[:type]
    @booty = atr[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    self.all.clear
  end

end
