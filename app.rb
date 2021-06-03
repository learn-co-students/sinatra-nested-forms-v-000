require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      # binding.pry
      name = params[:name]
      weight = params[:weight]
      height = params[:height]
      @pirate = Pirate.new(params)

      erb :"pirates/show"
    end
  end
end
