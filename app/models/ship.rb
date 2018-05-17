class Ship
  attr_reader :pirate, :name, :type, :booty

  @@all = []

  def initialize(name, type, booty)
    @name = name
    @booty = booty
    self << @@all
  end

  def self.all
    @@all
  end

end
