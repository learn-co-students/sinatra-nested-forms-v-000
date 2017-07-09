class Ship

  attr_accessor :name, :type, :booty

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end

  def initialize(ship_hash)
    ship_hash.each{|k,v| send("#{k}=", v)}
    self.class.all << self
  end

end