class Pirate

  attr_accessor :name, :weight,:height

  PIRATES = []

  def initialize (params)
    @name, @height, @weight = params[:name], params[:height], params[:weight]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
