class Pirate
  attr_accessor :name, :weight, :height

  PIRATE = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
  
  end

  def self.all
    PIRATE
  end
end
