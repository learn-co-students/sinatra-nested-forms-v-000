class Pirate

  attr_reader :name, :weight, :height, :booty

 PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @booty = params[:booty]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
