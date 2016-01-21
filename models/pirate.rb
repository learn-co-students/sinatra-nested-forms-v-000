require 'pry'
class Pirate 
 attr_accessor :name, :weight, :height, :ships, :net_worth
  PIRATES = []

  def initialize(params)

    @name = params[:pirate][:name]
    @weight = params[:pirate][:weight]
    @height = params[:pirate][:height]
    @net_worth = params[:pirate][:net_worth]
    PIRATES << self
  end

  def self.all
    PIRATES
  end 

end 