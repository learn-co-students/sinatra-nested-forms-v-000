require './environment'

module FormsLab
  class App < Sinatra::Base


   get '/' do
     erb :root
   end

   get '/new' do
     erb :"pirates/new"
   end

   post '/pirates' do
     @pirate = params[:pirate]
     @ships = params[:pirate][:ships]
     erb :"pirates/show"
   end


    # code other routes/actions here

  end
end
