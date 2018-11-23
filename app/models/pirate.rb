class Pirate < ActiveRecord::Base
  attr_reader :name, :weight, :height, :ships

  PIRATES = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
  
  @pirates = PIRATES
end