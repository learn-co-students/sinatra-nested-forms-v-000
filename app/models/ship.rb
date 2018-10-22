class Ship
  attr_accessor :name, :type, :booty
  BOOTIES = []
  
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    BOOTIES << self
  end
  
  def self.all 
    BOOTIES
  end
  
  def self.clear 
    BOOTIES.clear
  end
end