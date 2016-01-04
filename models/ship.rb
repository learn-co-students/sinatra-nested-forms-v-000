class Ship
  attr_accessor :name, :type, :booty
  
  @@all = []  

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    Ship.all << self
  end

  def self.all
    @@all
  end
end