class Pirate
  attr_reader :name, :weight, :height

  def initialize(details)
    @name = details[:name]
    @weight = details[:weight]
    @height = details[:height]
  end
end
