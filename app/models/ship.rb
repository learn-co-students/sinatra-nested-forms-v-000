class Ship
  attr_accessor :name, :type, :booty

  SHIPYARD = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]

    SHIPYARD << self
  end

  def self.all
    SHIPYARD
  end

  def self.clear
    SHIPYARD.clear
  end

end