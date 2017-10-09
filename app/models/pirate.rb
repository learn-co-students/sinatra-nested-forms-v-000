class Pirate

  attr_accessor :name,:weight,:height

  @@all = []

  def self.all
      @@all
  end

  def initialize(params)
    @name   = params[:pirate][:name]
    @weight = params[:pirate][:weight]
    @height = params[:pirate][:height]
    @@all << self
  end

end
