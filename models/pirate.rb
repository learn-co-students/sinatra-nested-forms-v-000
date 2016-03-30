class Pirate 
  attr_accessor :name, :height, :weight
  
  PIRATES = []
  
  def initialize(params)
    self.name = params[:name]
    self.height = params[:height]
    self.weight = params[:weight]
    PIRATES << self
  end
  
  def self.all
    PIRATES
  end
  
end