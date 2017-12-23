require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/pirates' do

      erb :show
    end

    # code other routes/actions here

  end
end
