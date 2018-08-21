class Ship
  
  attr_accessor :name, :type, :booty
  
  SHIPS = []
  
<<<<<<< HEAD
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    SHIPS << self
  end
    
  
=======
>>>>>>> 41705ad0d1e8c8770d062bc86a1fe6d77a523e24
  def self.all
    SHIPS
  end
  
  def self.clear
    SHIPS.clear
  end
  
end