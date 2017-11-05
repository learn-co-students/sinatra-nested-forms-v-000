# Create two classes, a `Pirate` class and a `Ship` class.
# Pirates should have a name, weight, and height.
# You will also need a class method that returns all the pirates.
class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
