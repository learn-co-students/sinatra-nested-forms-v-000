class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initailize
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
