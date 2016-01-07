class Ship

  attr_reader :name, :type, :bootyy

  SHIPS = []

  def intialize(args)
    @name = args[:name]
    @type = args[:type]
    @body = args[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS    
  end
end