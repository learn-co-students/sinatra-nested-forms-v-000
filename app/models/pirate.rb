class Pirate
  attr_accessor :name, :weight, :height

  PIRATES = [] #Unsure why this is a constant instead of a class method. No explanation was given. @@all *does* work though.

  def initialize(params) #arg passed in as a has (e.g. pirate => {name => "Jack", weight => '175', height => "5'9"})
    @name = params[:name] #taken from user's data upon submission
    @weight = params[:weight]
    @height = params[:height]

    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
