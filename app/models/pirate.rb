class Pirate
  @@pirates = []
  attr_accessor :name, :height, :weight
  def initialize(params)
    @name = params[:name]
    @weight =params[:weight]
    @height = params[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end
end
