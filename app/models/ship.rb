class Ship
	attr_accessor :name, :type, :booty

	SHIP = []

	def initialize(hash)
		@name = hash[:name]
		@type = hash[:type]
		@booty = hash[:booty]
		SHIP << self
	end

	def self.all
		SHIP
	end

	def self.clear
		SHIP.clear
	end
end