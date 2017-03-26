class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initiailze(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end
end