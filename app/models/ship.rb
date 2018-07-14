class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(attributes)
    self.name = attributes["name"]
    self.type = attributes["type"]
    self.booty = attributes ["booty"]
  end

  def self.all
    @@all
  end

  def self.clear
    @@all= []
  end

end
