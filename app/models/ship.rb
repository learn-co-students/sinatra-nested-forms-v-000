class Ship

    attr_accessor :name, :type, :booty

    SHIPS = [ ]

      def initialize(name, type, booty) #replaced :args
      @name = name # replaced args[:name]
      @type = type# replaced args [:type]
      @booty = booty #replaced args[:booty]
      SHIPS << self
    end

    def self.all
      SHIPS
    end

    def self.clear
      SHIPS.clear
    end

end
