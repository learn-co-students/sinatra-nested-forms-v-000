class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
      SHIPS << self 
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end



end
