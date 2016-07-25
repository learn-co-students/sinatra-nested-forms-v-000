class Ship

  attr_accessor :name, :type, :booty
@@all = []
  def initialize
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
  end

  def self.all
    @@all << self
    @@all
  end

  def self.clear
    @@all.destory
  end
end
