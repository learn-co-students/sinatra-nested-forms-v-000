class Ship

	attr_accessor :name, :type, :booty

	SHIPS = []

	def initialize(attribute)
		@name = attribute["name"]
		@type = attribute["type"]
		@booty = attribute["booty"]

		SHIPS << self
	end

	def self.all
	  SHIPS
	end

	def self.clear
	  self.all.clear
	end

end