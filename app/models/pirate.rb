class Pirate
  attr_accessor :name, :weight, :height

  @@ALL = []

  def initialize(params)
    @name = params[:pirate][:name]
    @weight = params[:pirate][:weight]
    @height = params[:pirate][:height]
    @@ALL << self
  end

  def self.all
    @@ALL
  end

  def self.clear
    @@ALL=[]
  end
end
