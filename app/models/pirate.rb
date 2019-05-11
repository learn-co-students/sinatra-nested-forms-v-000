class Pirate
<<<<<<< HEAD
  attr_accessor :name, :weight, :height

  ALL = []


  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]

    ALL << self
=======
    attr_accessor :name, :height, :weight

      ALL = []

    def initialize (name=nil, height=nil, weight=nil)
      @name = name
      @height = height
      @weight = weight

      ALL << self

>>>>>>> 98e98848162fab66e5951bdc6c60a7f13fb8c220
  end

  def self.all
    ALL
  end
end
