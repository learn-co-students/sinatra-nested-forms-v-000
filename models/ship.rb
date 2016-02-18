class Ship

  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(params)
    @name=params[:name]
    @type=params[:type]
    @height=params[:height]
    SHIPS << self
  end
  
  def self.all
    SHIPS
  end

end