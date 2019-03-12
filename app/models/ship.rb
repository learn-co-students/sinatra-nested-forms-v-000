class Ship < ActiveRecord::Base
    belongs_to :pirate
    # attr_accessor :name, :type, :booty
    # @@ships = []

    # def initialize(hash)
    #     @name = hash[:name]
    #     @type = hash[:type]
    #     @booty = hash[:booty]
    #     @@ships << self
    # end

    # def self.all
    #     @@ships
    # end

    # def self.clear
    #     @@ships.clear
    # end
end