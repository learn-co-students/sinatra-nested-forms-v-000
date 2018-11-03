class Pirate
  attr_accessor :name, :weight, :height


  @@pirates= []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@pirates << self
    params[:ships].each do |ship|
      Ship.new(ship)
    end
  end

  def self.all
    @@pirates
  end
end
