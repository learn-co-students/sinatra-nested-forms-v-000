class Ship

  attr_reader :name, :type, :booty

  SHIPS = []

  def initialize(args)
    @name = arg[:name]
    @name = arg[:type]
    @name = arg[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

end
