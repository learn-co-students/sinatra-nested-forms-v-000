class Pirate
  attr_accessor :name, :weight, :height
  @@all = Array.new

  def initialize (pirate_info)
    @name = pirate_info[:name]
    @weight = pirate_info[:weight]
    @height = pirate_info[:height]
    self.class.all << self
  end

  def self.all
    @@all
  end
end
