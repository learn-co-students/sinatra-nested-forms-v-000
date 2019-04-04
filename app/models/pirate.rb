require 'pry'
class Pirate
  attr_reader :name, :weight, :height

  @@all_pirates = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all_pirates << self
  end

  def self.all
    @@all_pirates
  end

  def self.clear
    @@all_pirates.clear
  end
end
