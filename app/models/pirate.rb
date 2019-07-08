class Pirate
  attr_reader :name, :weight, :height
  @@all = []

  def initialize(arrrgs)
    # binding.pry
    @name = arrrgs[:name]
    @weight = arrrgs[:weight]
    @height = arrrgs[:height]
    @@all << self
  end



  def self.all
    @@all
  end
end
