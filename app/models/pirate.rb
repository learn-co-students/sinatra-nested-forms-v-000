class Pirate
  attr_accessor :name, :height, :weight #changed structure of classes

  @@PIRATES = []

  def initialize(params) #parameters changed to params hash rather than individual parameters
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
  end

  def self.all
    @@PIRATES << self
  end

  def self.clear
    @@PIRATES = []
  end
end
