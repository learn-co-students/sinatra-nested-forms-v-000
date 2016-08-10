class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(options = {})
    @name = options[:ships][][:name]
    @type = options[:ships][][:type]
    @booty = options[:ships][][:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
