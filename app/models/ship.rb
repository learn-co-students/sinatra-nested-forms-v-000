class Ship

  attr_accessor :type, :booty
  @@all = []

  def self.all
      @@all
  end

  def initialize(params)
    @type  = params[:pirate][:type]
    @booty = params[:pirate][:booty]
  end

end
