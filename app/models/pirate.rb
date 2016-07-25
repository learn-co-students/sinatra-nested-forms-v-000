class Pirate

  attr_accessor :name, :weight, :height
  PIRATES = []
  def intinalize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATE << self
  end

  def self.all
   PIRATES
  end

end