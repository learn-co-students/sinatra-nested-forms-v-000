require 'pry'

class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def intialize(details)
    @name = details[:name]
    @type = details[:type]
    @booty = details[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
