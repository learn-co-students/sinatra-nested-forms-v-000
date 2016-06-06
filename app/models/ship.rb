class Ship
  attr_reader :name, :type, :booty
  @@ships = []
  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    Ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    self.all.clear
  end
end
