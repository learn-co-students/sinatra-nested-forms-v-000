class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @boots = params[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end
