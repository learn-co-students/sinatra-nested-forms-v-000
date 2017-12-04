require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      erb :pirates/new
    end

    get "/post" do
      erb :show
    end
  end
end
