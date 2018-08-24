class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(attrib_hash)
    @name = attrib_hash[:name]
    @type = attrib_hash[:type]
    @booty = attrib_hash[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end