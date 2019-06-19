require './environment'

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
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      
      erb :"pirates/show"
    end

    # What is the nested hash structure that we want?
    # params = {
    #   pirate: {
    #       name: "",
    #       weight: "",
    #       height: "",
    #       ships: [{
    #         name: "",
    #         type: "",
    #         booty: ""
    #       },
    #       {
    #         name: "",
    #         type: "",
    #         booty: ""
    #       }]
    #   }
    # }

  end
end
