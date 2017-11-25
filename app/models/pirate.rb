class Pirate

  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(arg)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

  def self.all
    @@all
  end

  def destroy
    self.all.clear
  end
end
