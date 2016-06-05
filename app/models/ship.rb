class Ship
  @@ships = []
  attr_accessor :name, :type, :booty

  def initialize(params)
    #binding.pry
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end
