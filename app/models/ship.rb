class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

  def initialize(hash)
    self.name = hash[:name]
    self.type = hash[:type]
    self.booty = hash[:booty]

    @@all << self
  end
end
