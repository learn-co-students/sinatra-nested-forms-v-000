class Ship

  SHIPS = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:type]
    @height = params[:booty]
    SHIPS << self
  end

  def self.all 
    SHIPS
  end

end