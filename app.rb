require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      #points to an erb that holds the form
      "Hello World"
      erb :"pirates/new"
    end

    post '/pirates' do
      #points to an erb that displays the info.
      #several instance variables will be declared here
      @new_pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships]. each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      erb :"pirates/show"
    end


  end
end
