class Pirate
  attr_accessor :name, :weight, :height

  PIRATES = []

  def initialize
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
