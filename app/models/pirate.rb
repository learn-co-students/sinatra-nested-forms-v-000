class Pirate
  attr_accessor :name, :weight, :height, :ships

  @@all = []



  def initialize

    #@weight = weight
  #  @height = height
    @@all << self
    @ships = []

  end

  def self.all
    @@all
  end

end
