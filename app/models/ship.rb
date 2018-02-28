class Ship
  attr_accessor :name, :type, :booty
  @@ALLSHIPS = []
  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    @@ALLSHIPS << self
  end

  def self.all
    @@ALLSHIPS
  end

  def self.clear
    @@ALLSHIPS = []
  end
end
#name, type, and booty attributes
