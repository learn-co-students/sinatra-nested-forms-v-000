class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(deets)
    deets.each{|key,val| self.send("#{key}=", val)}
    @@ships.push(self)
  end

  def self.all
    @@ships
  end
end
