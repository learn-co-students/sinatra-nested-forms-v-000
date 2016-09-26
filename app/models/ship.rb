class Ship
  attr_accessor :name, :type, :booty, :pirate

  @@ships = []

  def initialize(hash)
    self.name = hash[:name]
    self.type = hash[:type]
    self.booty = hash[:booty]
  end

  def save
    self.pirate.ships << self if self.pirate != nil
  end

  def self.all
    @@ships
  end

  def self.clear
    self.all.clear
  end
end
