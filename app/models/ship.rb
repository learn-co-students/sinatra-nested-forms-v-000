class Ship

  attr_reader :name, :type, :booty

  @@all = []

  def initialize (str)
    @name = str[:name]
    @type = str[:type]
    @booty = str[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def Ship.clear
    @@all = []
  end
end
