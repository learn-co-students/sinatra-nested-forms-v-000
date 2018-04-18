class Ship
  attr_accessor :name, :type, :booty

<<<<<<< HEAD
  ALL = []

  def initialize (params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]

    ALL << self
  end

  def self.all
    ALL
  end

  def self.clear
    ALL.clear
  end

  #returns all the ships and a class method `.clear` that deletes all ships.
=======
    ALL = []

  def initialize (name=nil, type=nil, booty=nil)
    @name = name
    @type = type
    @booty = booty

    ALL << self

end

def self.all
  ALL
end

def self.clear
  ALL.delete!
end
>>>>>>> 98e98848162fab66e5951bdc6c60a7f13fb8c220

end
