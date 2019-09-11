class Pirate
    attr_accessor :name, :weight, :height, :ships

    def initialize(params)
      @name = params[:pirate][:name]
      @weight = params[:pirate][:weight]
      @height = params[:pirate][:height]
      @ships = params[:pirate][:ships]
      # @ships = Ship.new(params)
    end
end
