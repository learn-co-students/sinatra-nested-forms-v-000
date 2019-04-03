require 'pry'
class Pirate
  attr_reader :name, :weight, :height
  
  @@all_pirates = []
  
  def initialize(hash)
    hash.each {|k,v| self.send("#{k}=", v)}
  end
  
  def self.all 
    @@all_pirates
  end
  
  def self.clear
    @@all_pirates.clear
  end
end