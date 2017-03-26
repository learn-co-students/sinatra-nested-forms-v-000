class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initiailze
    @name = name
    @type = type
    @booty = booty
    @@ships << self
  end

  def self.all
    @@ships
  end
end