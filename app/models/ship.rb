class Ship

  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(ships)
    ships.each {|key, value| self.send("#{key}=", value)}
    @@ships << self
  end

  def self.all
    @@ships
  end
end
