class Ship
    
    attr_accessor :name, :type, :booty

    SHIPS = []

    def initialize (properties)
        @name = properties[:name]
        @type = properties[:type]
        @booty = properties[:booty]
        SHIPS << self
    end

    def self.all
        SHIPS
    end

    def self.clear
        self.all.clear
    end
    
end