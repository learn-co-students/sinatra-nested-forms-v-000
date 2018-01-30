class Pirate
  attr_accessor :name, :weight, :height
 
     @@all = []

     def initialize(arghs)
         @name = arghs[:name]
         @weight = arghs[:weight]
         @height = arghs[:height]
         @@all << self
     end

     def self.all
         @@all
     end
  end
