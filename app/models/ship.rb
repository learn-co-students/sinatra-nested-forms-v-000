class Ship
  attr_accessor :name, :type, :booty

  @@all = []
  
  def initialize(params)
    params.each{|k, v| self.send("#{k}=", v)}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end