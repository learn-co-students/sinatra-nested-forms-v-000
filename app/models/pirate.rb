class Pirate
  attr_accessor :name, :weight, :height

  PIRATES = []; def self.all; PIRATES; end

  def initialize(char)
    @name = char[:name]
    @weight = char[:weight]
    @height = char[:height]
    PIRATES << self
  end
end
