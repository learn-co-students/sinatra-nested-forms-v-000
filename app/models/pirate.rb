class Pirate
attr_accessor :name, :weight, :height, :ships
@@all = []

	def initialize(params)
	  params.each {|k,v| self.send("#{k}=", v)}
	  	  @@all << self
	end
	
	def self.all
	  @@all
	end
end
