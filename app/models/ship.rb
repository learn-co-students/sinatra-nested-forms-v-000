class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(arguments)
    @name = arguments[:name]
    @type = arguments[:type]
    @booty = arguments[:booty]

    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    self.all.clear
  end

end
