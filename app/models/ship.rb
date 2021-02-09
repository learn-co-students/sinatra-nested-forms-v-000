class Ship
    attr_accessor :name, :type, :booty, :pirate

    @@all = []

    def initialize(args)
        args.each do |key, value|
            self.send("#{key.to_s}=", value)
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end
end