class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(attributes)
    attributes.each{|attr, value| self.send("#{attr}=", value)}
    SHIPS << self
  end

  def self.all
    SHIPS
  end
end