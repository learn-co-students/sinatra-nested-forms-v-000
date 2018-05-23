class Pirate
attr_accessor :name, :weight, :height

CREW = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]

    CREW << self
  end

  def self.all
    CREW
  end

end