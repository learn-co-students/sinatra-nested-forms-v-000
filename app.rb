require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :new
    end

    post '/show' do
      @student = Student.new(params[:student])

      params[:student][:courses].each do |details|
        Course.new(details)
      end

      @courses = Course.all

      erb :show
    end

  end
end
