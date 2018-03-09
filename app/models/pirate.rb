class Pirate
  attr_accessor :name, :weight, :height, :ships

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
