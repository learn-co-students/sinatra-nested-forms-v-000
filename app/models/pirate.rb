class Pirate

  attr_accessor :name, :weight, :height

  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @heigth = params[:heigth]

    PIRATES << self
  end

  def self.all
    PIRATES
  end

  def self.clear
    PIRATES.clear
  end

end
