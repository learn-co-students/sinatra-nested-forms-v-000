class Ship
  
    attr_reader :name, :type, :booty_attributes
  
  @@all = []
  
  def initalize(params)
    @name = params[:name]
    @type = params[:type]
    @booty_attributes = params[:booty_attributes]
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.clear 
    @@all.clear
  end
  
end