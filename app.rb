require './environment'

module FormsLab
  class App < Sinatra::Base
    configure do
      set :views, ['views', 'views/pirates']
    end

    helpers do
      def find_template(views, name, engine, &block)
        views.each { |v| super(v, name, engine, &block) }
      end
    end
    
    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :new
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
 
      params[:pirate][:ships].each { |details|
        Ship.new(details)
      }
 
      @ships = Ship.all
    
      erb :show
    end
  end
end
