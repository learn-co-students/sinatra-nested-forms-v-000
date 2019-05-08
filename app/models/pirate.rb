class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(params) # Pass in pirate hash arguement and create attributes.  Will not use ship info.
    @name = params[:name]
    @weight =params[:weight]
    @height = params[:height]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
