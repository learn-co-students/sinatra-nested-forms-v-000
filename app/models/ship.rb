class Ship
  attr_accessor :name, :type, :booty
  @@all = Array.new

  def initialize(ship_info)
    @name = ship_info[:name]
    @type = ship_info[:type]
    @booty = ship_info[:booty]
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end
end
