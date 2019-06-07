class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(pirate_hash)
    pirate_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end
