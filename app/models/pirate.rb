class Pirate

  PIRATES = []

  def self.all
    PIRATES
  end

  def self.clear
    PIRATES.clear
  end

  def self.from_params(params)
    self.new(name: params[:name], weight: params[:weight], height: params[:height])
  end

  attr_reader :name, :weight, :height

  def initialize(name: , weight: , height: )
    @name = name
    @weight = weight
    @height = height
    self.save
  end

  def save
    PIRATES << self
  end
end
