class Ship

  attr_reader :name, :type, :booty

SHIP = []

def initialize(params)
  @name =  params[:name]
  @type= params[:type]
  @booty= params[:booty]
 SHIP << self
end

def self.all
  SHIP

end


attr_reader :name, :weight, :height

PIRATES = []

def initialize(params)
  @name =  params[:name]
  @weight= params[:weight]
  @height= params[:height]
 PIRATES << self
end

def self.all
  PIRATES
end

  def self.clear
    PIRATES.clear

  end

end
