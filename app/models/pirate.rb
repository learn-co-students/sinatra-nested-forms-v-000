class Pirate

	attr_accessor :name, :weight, :height, :ships

	PIRATES = []

	def initialize(attributes)
		@name = attributes["name"]
		@weight = attributes["weight"]
		@height = attributes["height"]
		@ships = attributes["ships"].map { |ship| Ship.new(ship) }

		PIRATES << self
	end

	def self.all
		PIRATES
	end

end