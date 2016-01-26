require './environment'
require 'pry'

class Pirate

	attr_reader :name, :height, :weight
	PIRATES = []

	def initialize(args)
		@name = args[:name]
		@height = args[:height]
		@weight = args[:weight]
		PIRATES << self
	end

	def self.all
		PIRATES
	end
end

class Ship

	attr_reader :name, :type, :booty
	SHIPS = []

	def initialize(args)
		@name = args[:name]
		@type = args[:type]
		@booty = args[:booty]
		SHIPS << self
	end

	def self.all
		SHIPS
	end
end


module FormsLab
  class App < Sinatra::Base

	get '/' do
		erb :root	
	end

	get '/new' do
		erb :'pirates/new'
	end
	
	post '/pirates' do
		@pirate = Pirate.new(params[:pirate])		
		binding.pry
		params[:pirate][:ships].each do |ship|
			Ship.new(ship)
		end
		@ships = Ship.all

		erb :'pirates/show'
	end

  end
end
