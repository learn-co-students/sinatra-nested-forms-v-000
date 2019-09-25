class Pirate
  attr_reader :weight, :height

  PIRATES = []

  def initialize(params)
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
