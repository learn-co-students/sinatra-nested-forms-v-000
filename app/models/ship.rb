class Ship
  attr_accessor :name, :type, :booty
  @@ships = []
  def initialize(att)
    att.each {|k, v| self.send(("#{k}="),v)}
    @@ships << self
  end
  def self.all
    @@ships
  end
end
