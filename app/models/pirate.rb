class Pirate
  attr_reader :name, :weight, :height

  def initialize(pirate)
    @name = pirate[:name]
    @weight = pirate[:weight]
    @height = pirate[:height]
  end
end
