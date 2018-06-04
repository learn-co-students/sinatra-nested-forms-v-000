class Ship

@@ships = []

  def initialize(params)
    @name = params[:pirate][:ship][:name]
    @type = params[:pirate][:ship][:type]
    @booty = params[:pirate][:ship][:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end

end
