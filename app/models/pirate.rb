class Pirate
  attr_accessor :name, :height, :weight, :ships
  PIRATES = []

  def initialize(params)
    @name, @height, @weight = params[:name], params[:height], params[:weight]
  end

  def self.all
    PIRATES
  end
end
