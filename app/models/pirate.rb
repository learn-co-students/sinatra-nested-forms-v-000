class Pirate
  attr_accessor :name, :weight, :height
  @@pirates = []

  def initialize(details)
    @name = details[:name]
    @weight = details[:weight]
    @height = details[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end

end
