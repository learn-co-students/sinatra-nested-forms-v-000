class Pirate
  attr_accessor :name, :weight, :height, :ships

  @@pirates = []

  def initialize(deets)
    deets.each{|key,val| self.send("#{key}=", val)}
    @@pirates.push(self)
  end

  def self.all
    @@pirates
  end
end
