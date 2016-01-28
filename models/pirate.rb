class Pirate 
	attr_accessor :name, :weight, :height, :ships

	PIRATES = []

	def initialize(params)
		params.each do |k,v|
			self.send("#{k}=",v)
		end
		PIRATES << self
	end

	def self.all
		PIRATES
	end

end