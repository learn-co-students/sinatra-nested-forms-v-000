class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(arrgs)
    @name = arrgs[:name]
    @type = arrgs[:type]
    @booty = arrgs[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
