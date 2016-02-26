class Ship
  attr_accessor :name, :type, :booty

  @@SHIPS = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @name = args[:booty]
    @@SHIPS << self
  end

  def self.all
    @@SHIPS
  end
  
end