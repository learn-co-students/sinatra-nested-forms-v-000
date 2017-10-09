class Ship

  attr_accessor :type, :booty, :name
  @@all = []

  def self.all
      @@all
  end

  def initialize(hash)
    hash.each_pair{|k,v|instance_variable_set("@#{k}",v)}
    @@all << self
  end

  def self.clear
    @@all.clear
  end

end
