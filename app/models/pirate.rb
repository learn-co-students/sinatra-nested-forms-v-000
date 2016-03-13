class Pirate
	attr_accessor :name, :weight, :height, :ships

	PIRATES = []

	def initialize(args)
		@name = args[:name]
		@weight = args[:weight]
		@height = args[:height]
		@ships = args[:ships]
		PIRATES << self
	end

	def self.all
		PIRATES
	end
end