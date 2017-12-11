class Pirate

  PIRATES = []

  attr_accessor :name, :height, :weight

  def initialize(params)
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
