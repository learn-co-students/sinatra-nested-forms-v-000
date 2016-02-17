class Ship 
  attr_accessor :name, :type, :booty
  # has_many :pirates

  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @type = hash[:type]
    @booty = hash[:booty]
  # binding.pry
    @@all << self
  end

  def self.all
    @@all
  end


end