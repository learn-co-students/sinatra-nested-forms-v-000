class Pirate
    attr_accessor :name, :height, :weight, :ships
    
    @@all = []
    
    def initialize(stats = {})
        stats.each do |key,value|
            send("#{key}=",value) 
        end
        
        save
    end
    
    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end
    
    def self.clear
        self.all.clear
    end
    
end