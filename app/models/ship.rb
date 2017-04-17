class Ship
  attr_accessor :name, :type, :booty
   SHIPS = []
  def initialize(name,type,booty)
    @name,@type,@booty =name ,type , booty
    SHIPS << self
  end

  def self.clear
    SHIPS.clear
  end
end
