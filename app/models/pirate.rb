class Pirate
  attr_accessor :name, :weight, :height
  @@pirates = []

  def initialize(params)
    @name = params[:pirate][:name]
    @weight = params[:pirate][:weight]
    @height = params[:pirate][:height]
    self.class.all << self
  end

  def self.all
    @@pirates
  end
end
