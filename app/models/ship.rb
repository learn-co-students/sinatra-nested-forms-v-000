class Ship
  attr_accessor :name, :type, :booty
  @@all =[]

  def initialize(hash)
    @name, @type, @booty = hash[:name], hash[:type], hash[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
