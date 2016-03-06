class Pirate

  attr_accessor :name, :weight, :height, :ships

  @@pirates = []

  def initialize(pirate)
    pirate.each {|key, value| self.send("#{key}=", value)}
    @@pirates << self
  end

  def self.all
    @@pirates
  end
end
