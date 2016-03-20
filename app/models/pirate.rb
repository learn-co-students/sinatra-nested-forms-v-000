class Pirate
  attr_reader :name, :weight, :height, :ships

  def initialize(params)
    @name   = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @ships  = params[:ships]
  end

end
