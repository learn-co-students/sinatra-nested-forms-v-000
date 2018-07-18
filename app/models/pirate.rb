class Pirate
    attr_reader :name, :height, :weight

    @@all = []

    def initialize(params)
        @name = params[:name]
        @height = params[:height]
        @weight = params[:weight]
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.clear
        self.all.clear
    end
end