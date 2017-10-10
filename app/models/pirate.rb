class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]

    @@all << self
    params[:ships].each do |ship|
      Ship.new(ship)
    end
  end

  def self.all
    @@all
  end
end
