class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(attr_array)

    attr_array.each do |key, value|
      self.send("#{key}=", value)
    end

    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
