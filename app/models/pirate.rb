class Pirate
  attr_accessor :name, :height, :weight

  def initialize(attr_array)
    self.name = attr_array[:name]
    self.height = attr_array[:height]
    self.weight = attr_array[:weight]
  end

end
