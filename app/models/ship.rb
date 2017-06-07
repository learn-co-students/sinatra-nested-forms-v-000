class Ship

  attr_accessor :name, :type, :booty

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(arguments)
    @name = arguments[:name]
    @type = arguments[:type]
    @booty = arguments[:booty]
    @@all << self
  end
end
