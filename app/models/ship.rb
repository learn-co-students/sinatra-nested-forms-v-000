class Ship
  attr_accessor :name, :type, :booty

  @@all=[]

  def initialize(hash)
    @name = hash[:name]
    @type = hash[:type]
    @booty = hash[:booty]
    self.class.all<<self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end
end
