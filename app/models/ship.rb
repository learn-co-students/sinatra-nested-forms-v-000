class Ship

  attr_accessor :name, :type, :booty
  Ships = []
  def initialize(info)
    @name = info[:name]
    @type = info[:type]
    @booty = info[:booty]
    Ships << self
  end

  def self.all
    Ships
  end

  def self.clear
    Ships.clear
  end

end #ends Ship class
