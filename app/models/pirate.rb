class Pirate
  attr_accessor :name, :weight, :height

  def initialize(params)
    self.name = params[:name]
    self.weight = params[:weight]
    self.height = params[:height]
  end

end