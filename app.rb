require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :"pirates/new"
    end

    post '/pirates' do
      pirate = Pirate.new(params);
      puts "create = #{params[:name]}"
      puts "Pirate #{pirate.name} #{pirate.weight} #{pirate.height}"
      erb :"pirates/show"
    end

  end
end
