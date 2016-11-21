# class Ship
#   attr_accessor :name, :type, :booty
#
#   SHIPS = []
#
#   def initialize(params)
#     self.name = params[:name]
#     self.type = params[:type]
#     self.booty = params[:booty]
#     SHIPS << self
#   end
#
#   self.all
#     SHIPS
# #   end
#
#   self.clear
#     SHIPS.clear
  #end

#end
class Ship
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(details)
    self.name = details[:name]
    self.type = details[:type]
    self.booty = details[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
