class Pirate
  attr_reader :name, :weight, :height

  @@all = []

  def self.all
    @@all.dup.freeze
  end

  def initialize(params)
    @name   = params[:name]
    @weight = params[:weight]
    @height = params[:height]

    @@all << self
  end
end
