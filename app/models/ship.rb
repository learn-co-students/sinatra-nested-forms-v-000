class Ship
  attr_reader :name, :type, :booty

  @@all = []

  def self.all
    @@all.dup.freeze
  end

  def self.clear
    @@all.clear
  end

  def initialize(params)
    @name  = params[:name]
    @type  = params[:type]
    @booty = params[:booty]

    @@all << self
  end
end
