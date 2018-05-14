class Pirate
  attr_accessor :name, :weight, :height

  ARG = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    ARG << self
  end

  def self.all
    ARG
  end

end
