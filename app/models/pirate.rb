class Pirate
  attr_accessor :name, :weight, :height

  def initialize(attributes_hash)
    attributes_hash.each {|k, v|
      self.send(("#{k}="), v)}
  end

end
