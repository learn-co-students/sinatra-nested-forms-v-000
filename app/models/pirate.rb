require './config/environment' # for some reason, I'm not able to run the
                               # migrations without this requirement block.
=begin
when I run the rspec/capybara test suite I get the following error message:
    POST '/pirates' - returns a 200 status code (FAILED - 1)
Although this error message is essentially saying the '/pirates' page will
not load, I have checked the web app several times and it seems to work just fine

the rspec/capybara error message above will be resolved if I do the following:
    1.) delete the "ActiveRecord::Base" and "has_many :ships" blocks from this file
    2.) delete the equivelant blocks in the ship.rb model in this same directory
I'm guessing the rspec/capybara error message and migration problem are related but
I honestly have no idea.

If any of the FlatironSchool coaches could download my workspace and attempt to
debug this, such efforts would be greatly appreciated.
=end

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
