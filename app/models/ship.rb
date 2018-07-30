class Ship
  attr_reader :name, :type, :booty
  @@all = []

  def initialize(arrrgs)
    @name = arrrgs[:name]
    @type = arrrgs[:type]
    @booty = arrrgs[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end