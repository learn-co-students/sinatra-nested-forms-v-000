class Pirate
  attr_accessor :name, :weight, :height 
  
  PIRATES = []
  
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    self.class.all << self 
  end 
  
  def self.all 
    PIRATES 
  end 
end