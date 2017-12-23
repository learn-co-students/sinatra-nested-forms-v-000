class Ship
  attr_accessor :name, :type, :booty

SHIP = []
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @height = params[:booty]
    SHIP << self
end
end
