class Ship
  attr_reader :name, :type, :booty

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
  end

  def self.clear
    Pirate.all.clear
  end
end
