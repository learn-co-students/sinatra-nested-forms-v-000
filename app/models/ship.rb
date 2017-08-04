class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(args)
    self.name = args[:name]
    self.type = args[:type]
    self.booty = args[:booty]
    self.class.all.push(self)
  end

  def self.all
    @@ships
  end

  def self.clear
    self.all.clear
  end
end
