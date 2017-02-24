class Pirate
  attr_accessor :name, :weight, :height, :ships

  def initialize(attributes_hash)
    attributes_hash.each {|k, v|
      self.send(("#{k}="), v)}
  end

end
