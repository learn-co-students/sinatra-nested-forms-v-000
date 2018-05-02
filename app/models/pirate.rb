class Pirate
  attr_accessor :name, :weight, :height
  
  @@pirates = []
  
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@pirates << self
    
    params[:ships].each do |details|
        Ship.new(details)
    end
  end
  
  def self.all
    @@pirates
  end
  
end