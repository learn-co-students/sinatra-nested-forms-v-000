class Ship

  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(detail)
    # binding.pry
    @name = detail[:name]
    @type = detail[:type]
    @booty = detail[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end
  
end