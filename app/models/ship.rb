class Ship
    attr_accessor :name, :type, :booty
    
    @@all = []
    def initialize(arghs)
        @name = arghs[:name]
        @type = arghs[:type]
        @booty = arghs[:booty]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end

end