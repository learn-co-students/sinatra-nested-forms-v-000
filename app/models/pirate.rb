class Pirate

  attr_accessor :name, :weight, :height

  Pirates = []
  def initialize(info)
    @name = info[:name]
    @weight = info[:weight]
    @height = info[:height]
    Pirates << self
  end

  def self.all
    Pirates
  end





end #ends Pirate class
