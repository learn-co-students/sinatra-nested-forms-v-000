class Ship

  SHIPS = []

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

  def self.from_params(params)
    self.new(name: params[:name], type: params[:type], booty: params[:booty])
  end

  attr_reader :name, :type, :booty

  def initialize(name: , type: , booty: )
    @name = name
    @type = type
    @booty = booty
    self.save
  end

  def save
    SHIPS << self
  end
end
