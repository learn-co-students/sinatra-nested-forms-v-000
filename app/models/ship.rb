class Ship
  attr_accessor :name, :type, :booty

  @@all_ships = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @@all_ships << self
  end

  def self.all
    @@all_ships
  end

  def self.clear
    @@all_ships.clear
  end

end
