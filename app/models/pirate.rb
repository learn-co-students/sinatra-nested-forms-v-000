class Pirate
  # Create two classes, a Pirate class and a Ship class. Pirates should have a name, weight, and height. You will also need a class method that returns pirates the pirates.

  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(args)
    @name = args[:name]
    @height = args[:height]
    @weight = args[:weight]

    @@pirates << self
  end

  def self.all
    @@pirates
  end

end
