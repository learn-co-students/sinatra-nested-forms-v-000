class Pirate
  attr_accessor :name, :weight, :height
  ALLPIRATES = []
  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    ALLPIRATES << self
  end

  def self.all
    ALLPIRATES
  end
end
