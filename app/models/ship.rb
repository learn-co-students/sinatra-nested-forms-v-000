class Ship
  attr_accessor :name, :type, :booty
  SHIPS = []

  def initializer(name, type, booty)
    @name = name
    @type = weight
    @booty = height
    SHIPS << self
  end

  def self.all
   SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
