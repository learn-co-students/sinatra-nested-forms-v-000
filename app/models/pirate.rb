class Pirate
	attr_reader :name, :weight, :height

	PIRATES = []

	def initialize(params)
		@name = params[:name]
		@weight = params[:weight]
		@height = params[:height]
		@@all << self
	end

	def self.all 
		PIRATES 
	end

	def self.clear 
		PIRATES.clear
	end

end