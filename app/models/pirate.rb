class Pirate
  attr_accessor :name, :weight, :height
  @@pirate = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    save
  end

  def self.ships
    @ships
  end

  def save
    @@pirate << self
    @@pirate
  end

  def self.all
    @@pirate
  end

  def self.clear
    @@pirate.clear
  end

end
