class Pirate
	attr_accessor :name, :height, :weight, :ships
	@@all =[]
	def initialize(args)
		@name = args[:name]
		@height = args[:height]
		@weight = args[:weight]
		@ships = args[:ships]
		@@all << self
	end
	
	def self.all
		@@all
	end 
	
	def self.clear
		@@all = []
	end 
end