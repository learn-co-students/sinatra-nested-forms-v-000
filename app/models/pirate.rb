class Pirate
  attr_reader :name, :weight, :height
  Pirates = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    Pirates << self
  end

  def self.all
    Pirates
  end
end
