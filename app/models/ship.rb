class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    save
  end

  def self.ships
    @@ships
  end

  def save
    self.class.ships << self
  end

  def self.clear
    ships.clear
  end
end
