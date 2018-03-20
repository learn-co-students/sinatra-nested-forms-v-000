class Pirate
  attr_accessor :name, :weight, :height 
  
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all << self
  end
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
end