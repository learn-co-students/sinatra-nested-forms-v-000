class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(course_hash)
    @name = course_hash[:name]
    @type = course_hash[:type]
    @booty = course_hash[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end

