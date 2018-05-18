class Pirate
  attr_reader :name, :weight, :height

  @@pirates= []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    # pirate should have ships but not going there for this lab
    @@pirates << self
  end

  def self.all
    @@pirates
  end

end
