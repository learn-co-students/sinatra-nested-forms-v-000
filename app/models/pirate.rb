class Pirate

  PIRATES = []

  attr_accessor :weight
  attr_reader :name, :height

  def initialize(params)
   @weight = params[:weight]
   @name = params[:name]
   @height = params[:height]
   PIRATES << self
  end

  def self.all
    PIRATES
  end

end
