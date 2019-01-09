class Pirate
  attr_accessor :name, :weight, :height

  PIRATES = Array.new

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
