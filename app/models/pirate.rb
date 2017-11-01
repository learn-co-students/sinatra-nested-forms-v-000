class Pirate
  attr_reader :name, :height, :weight

  @@pirates = []

  def initialize(paramz)
    @name = paramz[:name]
    @height = paramz[:height]
    @weight = paramz[:weight]

    @@pirates << self
  end

  def self.all
    @@pirates
  end
end
