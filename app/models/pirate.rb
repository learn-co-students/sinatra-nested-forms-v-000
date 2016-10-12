class Pirate
  attr_accessor :name, :weight, :height

 def initialize(details)
   @name = details["name"]
   @weight = details["weight"]
   @height = details["height"]
   @ships = details["ship"]
 end

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
