class Ship
  attr_reader :pirate, :name, :type, :booty

  @@all = []

  def initialize(pirate, name, type, booty)
    @pirate = pirate
    @name = name
    @booty = booty
    self << @@all
  end

  def self.all
    @@all
  end

end
