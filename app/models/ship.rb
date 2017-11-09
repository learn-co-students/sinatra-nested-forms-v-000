class Ship

  attr_accessor :name, :type, :weight

  @@all = []

  def initialize(name, type, weight)
    @name = name
    @type = type
    @weight = weight
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
