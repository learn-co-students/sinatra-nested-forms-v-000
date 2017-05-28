class Pirate
  attr_accessor :name, :weight, :height
  @@all=[]
  def initialize(hash) #input값이 hash잖아.
    @name = hash[:name]
    @weight = hash[:weight]
    @height = hash[:height]
    self.class.all<<self
  end

  def self.all
    @@all
  end

end
