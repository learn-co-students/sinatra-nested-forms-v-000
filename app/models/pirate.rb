class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end

# params = {
#   "pirate" => {
#     "name" => "Blackbeard",
#     "weight" => "200lbs",
#     "height" => "6ft",
#     "ships" => [
#       {
#         "name" => "Titanic",
#         "type" => "tugboat",
#         "booty" => "gold"
#       }
#       {
#         "name" => "Jack Sparrow's ship",
#         "type" => "submarine",
#         "booty" => "diamonds"
#       }
#     ]
#    }
# }  
