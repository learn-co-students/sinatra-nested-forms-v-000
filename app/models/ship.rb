class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(name: name, type: type, booty: booty)
    @name, @type, @booty = name, type, booty
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end
end
