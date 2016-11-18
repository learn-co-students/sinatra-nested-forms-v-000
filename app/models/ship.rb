class Ship
  attr_accessor :name, :type, :booty
  SHIPS = []

  def initialize(hash)
    hash.each do |key, value|
      self.send("#{key}=", value)
    end
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end
