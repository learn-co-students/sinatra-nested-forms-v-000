class Ship
  @@ships= []
  attr_accessor :name,:type,:booty
  def initialize(args) #hash
     @name= args[:name]
     @type= args[:type]
     @booty= args[:booty]
     @@ships << self
   end
   def self.all
     @@ships
   end
   def self.clear
     @@ships.clear
     @@ships
   end
end
