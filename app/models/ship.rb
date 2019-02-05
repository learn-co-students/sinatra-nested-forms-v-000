class Ship
	attr_reader :name, :type, :booty

	@@ships = []

	def initialize(hash)
		@name = hash[:name]
		@type = hash[:type]
		@booty = hash[:booty]
		@@ships << self
	end

	def self.all 
		@@ships
	end

	def self.clear 
		@@ships = []
	end


end