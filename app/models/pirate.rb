class Pirate
  
  attr_accessor :name, :weight, :height
  
  PIRATES = []
  
<<<<<<< HEAD
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end
  
=======
>>>>>>> 41705ad0d1e8c8770d062bc86a1fe6d77a523e24
  def self.all
    PIRATES
  end
  
end