class Pirate
  attr_accessor :name, :weight, :height, :ships
  @@all = []

  def initialize(params)
    @name = params[:pirate][:name]
    @weight = params[:pirate][:weight]
    @height = params[:pirate][:height]
    @@all << self
  end

  def self.all
    @@all
  end


end
