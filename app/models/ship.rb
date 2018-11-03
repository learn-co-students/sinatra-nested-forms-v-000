class Ship < ActiveRecord::Base
  belongs_to :pirate
  
  # attr_accessor :name, :category, :booty, :pirate
  # @@all = []

  # def initialize(params)
  #   @name = params[:name]
  #   @category = params[:category]
  #   @booty = params[:booty]
  #   @@all << self
  # end

  # def self.all
  #   @@all
  # end

  # def self.clear
  #   @@all.clear
  # end
end