
class Pirate
	
	attr_accessor :name, :weight, :height, :ships
	
	@@all = []
	
	def initialize(pirate={})
		pirate.each do |x,y|
		self.send("#{x}=", y)
		end
		@@all << self
	end
	
	def self.all
		@@all
	end
	
end