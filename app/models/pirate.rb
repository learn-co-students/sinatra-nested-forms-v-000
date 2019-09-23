class Pirate
   attr_accessor :name, :weight, :height
   PIRATES = []
   def initialize(attributes)
      @name = attributes[:name]
      @weight = attributes[:weight]
      @height = attributes[:height]
      PIRATES << self
   end

   def self.all
      PIRATES
   end
end