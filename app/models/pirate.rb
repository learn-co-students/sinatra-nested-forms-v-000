class Pirate
  attr_accessor :name, :weight, :height, :ships
  PIRATES = []

  def initialize(params)
    @name, @weight, @height, @ships = params["name"], params["weight"], params["height"], params["ships"]  
    PIRATES << self 
  end

end