class Ship
  attr_accessor :name, :booty, :type

  @@all = []

  def initialize(name=nil, booty=nil, type=nil)
    @name = name
    @booty = booty
    @type = type
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
