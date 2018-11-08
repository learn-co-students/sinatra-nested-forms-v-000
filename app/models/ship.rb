class Ship
  attr_accessor :name, :type, :booty
  @@shipyard = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]

    @@shipyard << self
  end

  def self.all
    @@shipyard
  end

  def self.clear
    @@shipyard.clear
  end
end
