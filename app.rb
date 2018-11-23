require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirate/new'
    end

    post '/pirate' do
      @pirate = Pirate.new(params[:pirate])
      

      params[:pirate][:ships].each do |details|
        Ships.new(details)
      end
      @ships = Ships.all

      erb :'pirate/show'
    end
    
  end
end
