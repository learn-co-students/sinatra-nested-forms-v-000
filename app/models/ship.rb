class Ship

  attr_accessor :name, :type, :booty
  @@all = []
  def initalize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
  end

  def self.all
    @@all << self
  end

  def self.clear
  @@all.clear
  end
end