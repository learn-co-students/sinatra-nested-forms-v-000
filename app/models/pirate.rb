class Pirate
  attr_accessor :name,:weight,:height
  @@all = []
  def initialize(attributes={})
    #attributes.each {|key, value| self.send(("#{key}="), value)}
    @name = attributes[:name]
    @weight = attributes[:weight]
    @height = attributes[:height]
    @@all << self
  end
  def self.all
    @@all
  end
  def self.clear
    @@all.clear
  end
end
