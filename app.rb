require './environment'

module FormsLab
  class App < Sinatra::Base
    get "/" do
      status 200
       "Welcome to the Nested Forms Lab!\n
       let's navigate to the '/new'"
    end
    
    get "/new" do
      status 200
      erb :"pirates/new"
    end

    post "/pirates" do
      status 200
      @pirate = Pirate.new(params[:pirate])
 
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end


  end
end




#   describe "GET '/new'" do
#     before(:each) do
#       get '/new'
#     end

#     it "returns a 200 status code" do
#       expect(last_response.status).to eq(200)
#     end

#     it "renders a new form element on the page" do
#       expect(last_response.body).to include("<form")
#       expect(last_response.body).to include("</form>")
#     end

#     it "renders the pirate input fields for name, weight, and height attributes on the page" do
#       expect(last_response.body).to include("pirate[name]")
#       expect(last_response.body).to include("pirate[weight]")
#       expect(last_response.body).to include("pirate[height]")
#     end

#     it "renders the first ship's input fields for the name, type, and booty attributes on the page" do
#       expect(last_response.body).to include("pirate[ships][][name]")
#       expect(last_response.body).to include("pirate[ships][][type]")
#       expect(last_response.body).to include("pirate[ships][][booty]")
#     end

#     it "renders the second ship's input field for the name, type, and booty attributes on the page" do
#       expect(last_response.body).to include("pirate[ships][][name]")
#       expect(last_response.body).to include("pirate[ships][][type]")
#       expect(last_response.body).to include("pirate[ships][][booty]")
#     end
#   end