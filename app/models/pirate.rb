class Pirate
  attr_accessor :name, :weight, :height, :ships

  def initialize(name=nil, weight=nil, height=nil)
    @name = name
    @weight = weight
    @height = height
  end
end
