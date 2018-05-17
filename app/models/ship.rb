class Ship
  attr_reader :pirate, :name, :type, :booty

  @@all = []

  def initialize(name, type, booty)
    @name = name
    @booty = booty
    @type = type
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
