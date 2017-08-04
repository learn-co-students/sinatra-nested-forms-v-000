class Pirate
  attr_accessor :name, :weight, :height, :ships

  @@all = []

  def initialize(args)
    self.name = args[:name]
    self.weight = args[:weight]
    self.height = args[:height]
    self.ships = []
    self.class.all.push(self)
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end

end
