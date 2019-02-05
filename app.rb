require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
    	erb :root
    end

    get 'pirates/new' do 
    	erb :new
    end

    post '/show' do 
    	@pirate = Pirate.new(params[:user_input])

    	erb :show
    end

  end
end
