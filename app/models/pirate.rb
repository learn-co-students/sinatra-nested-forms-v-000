class Pirate
	attr_accessor :name, :weight, :height

	PIRATES = []
 #Since we are using nested forms, we need to initialize with (args)
 # then use the syntax :'@name = args[:name]'
	def initialize(args)
		@name = args[:name]
		@weight = args[:weight]
		@height = args[:height]
		PIRATES << self
	end

	def self.all
		PIRATES
	end

end
