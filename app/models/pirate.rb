class Pirate

  @@all = [ ]

  attr_accessor :name, :weight, :height

  def initialize(details)
    @name = details[:name]
    @weight = details[:weight]
    @height = details[:height]
    @@all << self
  end

  def self.all
    @@all
  end

end
