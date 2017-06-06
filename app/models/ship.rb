class Ship
	attr_accessor :name, :type, :booty
	@@all = []

	def initialize(name, type, booty)
		@name = name
		@type = type
		@booty = booty
		@@all << self
		self
	end

	def self.clear
		@@all = []
	end

	def self.create_from_params(params)
		params.each do |ship|
			self.new(ship["name"], ship["type"], ship["booty"])
		end
		@@all
	end

end