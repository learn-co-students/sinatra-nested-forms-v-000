class Ship
  @@ships= []
  attr_accessor :name,:type,:botty
  def initialize(args) #hash
     @name= args[:name]
     @type= args[:type]
     @botty= args[:type]
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
