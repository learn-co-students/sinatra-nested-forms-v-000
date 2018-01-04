require './config/environment' # for some reason, I'm not able to run the migrations without this requirement block.
                               # when I run the rspec/capybara test suite I get the following error message:
                               # POST '/pirates' - returns a 200 status code (FAILED - 1)

                               # the rspec/capybara error message above will be resolved if I do the following:
                               # 1.) delete the "ActiveRecord::Base" and "has_many :ships" blocks from this file
                               # 2.) delete the equivelant blocks in the ship.rb model in this same directory
                               # I'm guessing the rspec/capybara error message and migration problem are related...
                               # ...but I honestly have no idea.

class Pirate < ActiveRecord::Base
  has_many :ships
  attr_reader :name, :height, :weight

  @@pirates = []

  def initialize(paramz)
    @name = paramz[:name]
    @height = paramz[:height]
    @weight = paramz[:weight]

    @@pirates << self
  end

  def self.all
    @@pirates
  end
end
