class Pirate
  attr_accessor :name, :height, :weight

  @@all = []

  def initialize(params)

    @@all << self
  end

  def self.all
    @@all
  end
end
