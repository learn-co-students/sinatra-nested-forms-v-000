require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :new
    end

    #get '/new' do
    #  @pirate = params
    #  erb :new
    #end

    post '/pirates' do
      @pirate = Pirate.new(params)
      params[:pirate][:ships].each do |key,value|
        Ship.new(value)
      end
      erb :show
    end
  end
end
