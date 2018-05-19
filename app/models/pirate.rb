class Pirate
  attr_reader :name, :weight, :height

  @@pirates_array = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@pirates_array << self
  end

  def self.all
    @@pirates_array
  end

end
