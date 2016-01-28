class Ship
	attr_accessor :name, :type, :booty

	SHIPS = []
	
	def initialize(params)
		params.each do |k,v|
			self.send("#{k}=",v)
		end
		SHIPS << self
	end

	def self.all
		SHIPS
	end
end
