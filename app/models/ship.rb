class Ship
  attr_reader :name, :booty, :type
  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    @@all << self
  end
end
