class Ship
  attr_accessor :name, :weight, :height
    SHIPS = []

  def initialize(arg)
    @name = arg[:name]
    @weight = arg[:type]
    @height = arg[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end
