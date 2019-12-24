class Ship
  attr_reader :name, :type, :booty

  SHIPS = []

  def initialize(args)
    @name, @type, @booty = args[:name], args[:type], args[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end
end