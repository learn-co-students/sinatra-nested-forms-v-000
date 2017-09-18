class Ship

  @@ships = []
  attr_accessor :name, :type, :booty

  def initialize(input)
    @name = input[:name]
    @type = input[:type]
    @booty = input[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end

end
