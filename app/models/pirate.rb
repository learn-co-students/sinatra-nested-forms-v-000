
class Pirate

    attr_accessor :name, :weight, :height

    PIRATES = []

    def initialize(properties)
        @name = properties[:name]
        @weight = properties[:weight]
        @height = properties[:height]
        PIRATES << self
    end

    def self.all
        PIRATES
    end

    def self.clear
        self.all.clear
    end

end
