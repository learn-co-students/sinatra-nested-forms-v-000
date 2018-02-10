class Ship

  @@ships = []

  attr_accessor :name, :type, :booty

  def initialize
  end

  def self.all
    @@ships
  end

end
