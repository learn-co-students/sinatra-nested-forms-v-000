class Ship

  attr_accessor :name, :type, :booty
  @@all = []

  def self.all
    @@all    
  end

  def self.clear
    self.all.clear
  end

  def initialize(params)
    params.each { |key, value| self.send("#{key}=", value) }
    self.class.all << self
  end

end