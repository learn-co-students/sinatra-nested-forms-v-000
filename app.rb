require './environment'

module FormsLab
  class App < Sinatra::Base

 get '/pirate' do 
   erb :new 
  end
end
