class Ship
  attr_reader :name, :type, :booty

    def initialize(name, type, booty)
      @name = name
      @type = type
      @booty = booty
      @@all<< self
    end

    def self.all
      @@all  
    end

    def self.clear
      @@all.clear
    end  
end