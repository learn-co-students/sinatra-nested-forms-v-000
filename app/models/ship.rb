class Ship
  
    attr_reader :name, :type, :booty_attributes
  
  @@all = []
  
  def initalize(args)
    @name = args[:name]
    @type = args[:type]
    @booty_attributes = args[:booty_attributes]
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.clear 
    @@all.clear
  end
  
end