class Pirate

  attr_accessor :name, :weight, :height

  @@pirates = []

    def initiailize(args)
      @name = args[:name]
      @weight = args[:weight]
      @height = args[:height]
      @@pirates << self
    end

    def self.all
      @@pirates
    end

    def self.clear
      @@pirates = []
    end
  end
