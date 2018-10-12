class Pirate
 attr_accessor :name, :weight, :height
  
  STUDENTS = []
  
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
   STUDENTS << self
  end
  
  def self.all
    STUDENTS
  end
  
 

end