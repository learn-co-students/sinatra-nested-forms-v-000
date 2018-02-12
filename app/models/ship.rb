class Ship

  @@ships = []

  attr_accessor :name, :type, :booty

  def initialize(args)
    args.each do |key, value|
      self.send("#{key}=", value)
      @@ships << self
    end
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end

end
