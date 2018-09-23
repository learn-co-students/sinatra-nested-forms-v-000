class Ship
  attr_accessor :name, :type, :booty

  SHIP = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
  
  end

  def self.all
    SHIP
  end

  def self.clear
    SHIP.clear
  end
end
