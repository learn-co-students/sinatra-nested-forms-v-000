require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab!"
      "let's navigate to the <a href ='/new'>/new</a>"
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @name = params[:name]
      @type = params[:weight]
      @height = params[:height]
      @pirate = Pirate.new(@name, @weight, @height)

      #ship 1
      @name = params[:name]
      @type = params[:type]
      @booty = params[:booty]
      @ship_1 = Ship.new(@name, @type, @booty)

      #ship 2
      @name = params[:name]
      @type = params[:type]
      @booty = params[:booty]
      @ship_2 = Ship.new(@name, @type, @booty))
      erb :show
    end

end
