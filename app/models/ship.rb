class Ship
	attr_accessor :name, :type, :booty

	SHIPS = []
	def intialize(args)
		@name = args[:name]
		@type = args[:type]
		@booty = args[:booty]

		SHIPS << self
	end

	def self.all
		SHIPS
	end

	def self.clear
		SHIPS.clear
	end
end