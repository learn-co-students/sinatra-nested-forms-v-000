class Ship
    attr_accessor :type, :booty
    
    @@all = []

    def initialize(params)
      @type = params[:type]
      @booty = params[:booty]
      @@all << self
    end

    def self.all
      @@all
    end

    def self.clear
      @@all.clear
    end
end