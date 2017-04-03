class Pirate

@@all = []

  attr_accessor :name, :weight, :height

  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @height = hash[:height]
  end

  def self.all
    @@all
  end


end
