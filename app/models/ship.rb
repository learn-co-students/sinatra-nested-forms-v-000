class Ship
  attr_reader :name, :type, :booty

  ships_array = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    ships_array << self
  end

  def self.all
    ships_array
  end

  def self.clear
    ships_array.clear
  end

end
