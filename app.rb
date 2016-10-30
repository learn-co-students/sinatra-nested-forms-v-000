require './environment'
require_relative 'app/models/pirate'
require_relative 'app/models/ship'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/show" do



    end


  end
end
