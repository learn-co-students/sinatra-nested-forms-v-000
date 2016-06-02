class Pirate
  attr_reader :name, :weight, :height

  @@all_pirates = []

  def intialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]

    @@all_pirates << self
  end

  def self.all
    @@all_pirates
  end

end