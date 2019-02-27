class Pirate
    @@all = []
    attr_accessor :name, :weight, :height

    def initialize(attributes)
        attributes.each do |key, value|
            begin
               self.send("#{key}=", value) 
            rescue => exception
                puts "Did not find #{key}= method"
            end
        end

        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        self.all.clear
    end

end