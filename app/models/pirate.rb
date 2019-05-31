class Pirate
  attr_accessor :name, :weight, :height

  PIRATES=[]

  def initialize(pirate)
    @name=pirate[:name]
    @weight=pirate[:weight]
    @height=pirate[:height]
  end

  def self.all
    PIRATES
  end
end
