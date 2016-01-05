class Pirate

  attr_accessor :name, :height, :weight, :ships

  def initialize(hash)
    hash.each { |k,v| self.send(("#{k}="),v) }
  end

end