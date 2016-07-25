class Pirate

  attr_accessor :name, :weight, :height
@@all = []
  def initialize
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
  end

  def self.all
    @@all << self
    @@all
  end

end