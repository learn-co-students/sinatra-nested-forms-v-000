class Ship
  attr_accessor :name, :type, :booty
  @@ships = []

  def initiialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@all << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []

  end

end
