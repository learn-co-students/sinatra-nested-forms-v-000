class Ship
  attr_reader :name, :type, :booty

  SHIP = []

  def initalize(args)
    @name = args[:name]
    @type = args[:stype]
    SHIP << self
  end

  def self.all
    SHIP
  end

  def self.clear
    SHIP.clear
  end

end
