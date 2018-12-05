class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  def initialize(params)

    @@all << self
  end

  def self.clear
    @@all = []
  end
end
