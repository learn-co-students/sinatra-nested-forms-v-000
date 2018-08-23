class Pirate
	attr_accessor :name, :weight, :height

	PIRATE = []

	def initialize(hash)
		@name = hash[:name]
		@weight = hash[:weight]
		@height = hash[:height]
		PIRATE << self
	end

	def self.all
		PIRATE
	end

	def self.clear
		PIRATE.clear
	end
end