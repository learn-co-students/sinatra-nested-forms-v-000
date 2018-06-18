class Pirate
  attr_accessor :name, :weight, :height
  @@pirate = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height

    @@pirate << self
  end

  def self.all
    @@pirate
  end

  def self.clear
    @@pirate.destroy
  end

end
