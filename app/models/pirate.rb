require 'pry'
class Pirate
  attr_accessor :name, :weight, :height
  def initialize(args)
    args.each{|k, v| self.send("#{k}=", v) if self.methods.include?("#{k}=".to_sym)}
  end
end
