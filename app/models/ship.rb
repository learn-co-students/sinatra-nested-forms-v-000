require 'pry'

class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def intialize(details)
    @name = details[:name]
    @type = details[:type]
    @booty = details[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end
