class Pirate
  attr_accessor :name, :weight, :height
  @@all = []
  
  def initialize(args = {})
    args.each {|k,v| send "#{k}=", v if respond_to? "#{k}="}
    @@all << self
  end

  def self.all
    @@all
  end
end
