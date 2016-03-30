class Pirate 
  attr_accessor :name, :weight, :height, :ships

  PIRATES = []

  def initialize(attributes={})
    attributes.each{|attr, value| self.send("#{attr}=", value)}
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end