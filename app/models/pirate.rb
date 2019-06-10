class Pirate
  attr_accessor :name, :weight, :height, :ships, :ship_1, :ship_2

  PIRATES = []


  def initialize(params)
    @name = params[:pirate][:name]
    @weight = params[:pirate][:weight]
    @height = params[:pirate][:height]
    @ship_1 = params[:pirate][:ships][0][:name]
    @ship_2 = params[:pirate][:ships][1][:name]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

  def self.clear
    PIRATES.clear
  end

end
