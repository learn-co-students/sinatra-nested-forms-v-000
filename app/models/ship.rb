class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  def initialize(params)
    @name = params[ships][][:name]
    @type = params[ships][][:type]
    @booty = params[ships][][:booty]

    @@all << self
  end

  def self.clear
    @@all = []
  end
end
