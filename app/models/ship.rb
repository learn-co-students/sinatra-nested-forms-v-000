class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(attributes={})
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

end
