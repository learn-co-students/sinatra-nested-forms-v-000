class Pirate
	attr_reader :name, :weight, :height

	@@all_pirate = []
 
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all_pirates << self
  end
 
  def self.all
    @@all_pirates
  end
end