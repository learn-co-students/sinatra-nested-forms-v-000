class Pirate < ActiveRecord::Base

  has_many :ships
  attr_accessor :name, :weight, :height

  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all << self
  end

  def self.all?
    @@all
  end

end
