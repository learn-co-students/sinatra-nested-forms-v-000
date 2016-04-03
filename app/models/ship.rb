class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def self.all
    @@ships
  end

  def initialize(details)
    self.name = details[:name]
    self.type = details[:type]
    self.booty = details[:booty]
    @@ships << self
  end

end