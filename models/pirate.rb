class Pirate 
  attr_accessor :name, :weight, :height
  # belongs_to :ship


  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @height = hash[:height]
    @weight = hash[:weight]
    @@all << self
  end

  def self.all
    @@all
  end

end