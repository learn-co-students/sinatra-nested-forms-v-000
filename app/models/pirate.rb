class Pirate
  attr_accessor :name, :height, :weight

  @@pirates = []

  def initialize(params)
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
    save
  end

  def self.pirates
    @@pirates
  end

  def save
    self.class.pirates << self
  end
end
