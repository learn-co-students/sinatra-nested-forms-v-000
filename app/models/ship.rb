class Ship
    attr_accessor :name, :type, :booty
    SHIPS = []

    def initialize(attrs)
        @name = attrs[:name]
        @type = attrs[:type]
        @booty = attrs[:booty]
        SHIPS << self
    end

    def self.all
        SHIPS
    end

    def self.clear
        SHIPS.clear
    end

end