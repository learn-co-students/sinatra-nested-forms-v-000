require "pry"
class Ship

  attr_accessor :name, :type, :booty
  @@all = []
  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end
