class Pirate
  attr_reader :name, :weight, :height
  
  PIRATES = []
  
  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    PIRATES << self
  end
  
  self.all 
    PIRATES
  end
  
end