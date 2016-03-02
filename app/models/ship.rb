class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initialize(arg)
    @name = arg[:name]
    @type = arg[:type]
    @booty = arg[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

end