class Pirate

  @@pirates = []

  attr_accessor :name, :weight, :height

  def initialize(args)
    args.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  def self.all
    @@pirates
  end


end
