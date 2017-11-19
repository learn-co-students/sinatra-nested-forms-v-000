class Pirate
  attr_reader :name, :weight, :height

  @@all = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    @@all << self
    params[:ships].each do |ship|
      Ship.new(ship)
    end
  end

  def self.all
    @@all
  end
end
