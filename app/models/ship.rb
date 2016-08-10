class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(options)
    @name = options[:name]
    @type = options[:type]
    @booty = options[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
