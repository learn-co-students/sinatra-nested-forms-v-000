class Ship
  attr_accessor :name, :type, :booty_attributes

  SHIPS = []

  def initialize(atr)
    @name = art[:name]
    @type = atr[:type]
    @booty_attributes = atr[:booty_attributes]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    self.all.clear
  end

end
