require_relative 'config/environment'

module FormsLab
  class App < Sinatra::Base
  
    # code other routes/actions here
    get '/' do
      erb :new
    end 

    post '/show' do
      @new_pirate = Pirate.new(params[:pirate])
binding.pry
      params[:pirate][:ship].each do |ship_hash|
        
          Ship.new(ship_hash)  
      end
      @Ships = Ship.all
      erb :show
    end
  end
end



# post '/student' do
#   @student = Student.new(params[:student])
 
#   params[:student][:course].each do |course, details|
#     Course.new(details)
#   end
 
#   @classes = Course.all
 
#   erb :student
# end

# params[:student][:course] gives us a series of hashes that store each individual course information:
# { 
#   "0"=>{
#     "name"=>"AP US HIStory", 
#     "topic"=>"history"
#   }, 
#   "1"=>{
#     "name"=>"ap human geography", 
#     "topic"=>"history"
#   }
# }