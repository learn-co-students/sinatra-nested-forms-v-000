class Ship
  attr_reader :name, :type, :booty

  SHIPS = []

  def self.all
    SHIPS
  end

  def self.clear
    self.destroy
  end


end
