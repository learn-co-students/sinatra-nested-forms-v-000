class Pirate
  attr_reader :name, :weight, :height
  @@all_pirates = []
  
  def initialize(pirate_params)
    @name = pirate_params[:name]
    @weight = pirate_params[:weight]
    @height = pirate_params[:height]
    
    @@all_pirates << self
  end
  
  def self.all 
    @@all_pirates
  end
end