class Pirate

  attr_reader :name, :weight, :height

    @@pirates = []

    def initialize(pirate_detail)
      @name = pirate_detail[:name]
      @weight = pirate_detail[:weight]
      @height = pirate_detail[:height]
      @@pirates << self
    end

    def self.all
      @@pirates
    end

end
