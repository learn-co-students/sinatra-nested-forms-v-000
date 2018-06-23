class Ship
  attr_accessor :name, :type, :booty
  
  SHIPS = []
  
  def self.all
    SHIPS
  end
  
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    SHIPS << self
  end
  
  def self.clear
    self.all.clear
  end
end