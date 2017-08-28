class Pirate
  attr_reader :name, :height, :weight

  PIRATES = []

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
