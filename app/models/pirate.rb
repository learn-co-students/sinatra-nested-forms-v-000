class Pirate
  attr_accessor :name, :weight, :height

  def initialize (name, weight, height)
    @name=name
    @weight=weight
    @height=height
  end

  def self.all
    PIRATE
  end
end
