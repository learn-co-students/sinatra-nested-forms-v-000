class Ship

  attr_accessor :name, :type, :booty

  ALL = []
  
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    ALL << self
  end

  def self.create_from_collection(ship_info_array)
    ship_info_array.each {|ship_info| Ship.new(ship_info)}
  end

  def self.all
    ALL    
  end

  def self.clear
    ALL.clear
  end
end