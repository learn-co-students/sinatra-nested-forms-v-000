class Pirate
  attr_reader :name, :weight, :height

  Pirates = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    Pirates << self
  end

  def self.all
    Pirates
  end
  
end