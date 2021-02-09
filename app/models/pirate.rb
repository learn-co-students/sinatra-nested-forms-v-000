class Pirate
    attr_accessor :name, :weight, :height

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

    def ships=(ships)
        ships.each do |ship|
            if ship[:name] != ""
                ship_obj = Ship.new(ship)
                ship_obj.pirate = self
            end
        end
    end

    def ships
        Ship.all.select{|ship| ship.pirate == self}
    end
end