class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(args)
    puts args
    puts args["name"]
    @name = args["name"]
    @booty = args["booty"]
    @type = args["type"]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.each {|ship| ship = nil}
    SHIPS.clear
  end

end
