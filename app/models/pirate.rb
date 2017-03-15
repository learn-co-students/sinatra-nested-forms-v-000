class Pirate

  attr_accessor :name, :weight, :height

  @@all= []

  def initialize(args)
      @name = arg[:name]
      @weight = arg[:weight]
      @height = arg[:height]
      @@all << self
  end

end
