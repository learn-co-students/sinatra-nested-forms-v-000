
class Ship
	
	attr_accessor :name, :type, :booty
	
	@@all = []
	
	def initialize(start={})
		start.each do |key, value|
			self.send("#{key}=", value)
		end
		@@all << self
	end
	
	def self.all
		@@all
	end
	
end