class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(arg)
    @name = name
    @type = type
    @booty = booty
    @@all << self
  end

  def self.all
    @@all
  end

  def destroy
    self.all.clear
  end
end
