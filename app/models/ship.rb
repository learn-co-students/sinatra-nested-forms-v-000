class Ship
    @@all = []
    attr_accessor :name, :type, :booty
    def initialize(attributes)
        attributes.each do |key, value|
            self.send("#{key}=", value)
        end

        @@all << self
    end

    def self.new_from_array(array)
        array.each do |hash|
            self.new(hash)
        end
    end

    def self.all
        @@all
    end

    def self.clear
        self.all.clear
    end
end