class Pirate
	attr_accessor :name, :weight, :height
	@@all = []

	def initialize(name, weight, height)
		@name = name
		@weight = weight
		@height = height
		@@all << self
		self
	end

	def self.clear
		@@all = []
	end

	def self.create_from_params(params)
		# binding.pry
		self.new(params["name"], params["weight"], params["height"])
	end

end