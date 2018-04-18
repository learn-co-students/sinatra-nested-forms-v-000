class Ship
  attr_accessor :name, :type, :booty

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

end
