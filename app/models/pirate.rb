class Pirate < ActiveRecord::Base
  has_many :ships
  # attr_accessor :name, :weight, :height
  # PIRATES = []
  #
  # def initialize(args)
  #   @name = args[:name]
  #   @weight = args[:weight]
  #   @height = args[:height]
  #   PIRATES << self
  # end
  #
  # def self.all
  #   PIRATES
  # end
  #
  # def self.clear
  #   self.all.clear
  # end
end
