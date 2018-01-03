class Privateer
  attr_reader :name, :nationality

  @@privateers = []

  def initialize(paramz)
    @name = paramz[:name]
    @nationality = paramz[:nationality]

    @@privateers << self
  end

  def self.all
    @@privateers
  end
end
