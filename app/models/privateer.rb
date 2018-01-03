class Privateer
  attr_reader :name, :nationality, :letter_of_marque

  @@privateers = []
  @@letters_of_marque = []

  def initialize(paramz)
    @name = paramz[:name]
    @nationality = paramz[:nationality]
    @letter_of_marque = paramz[:letter_of_marque]
    @letter_of_marque = []
    @@privateer << self
    @@letters_of_marque << self
  end

  def all_letters_of_marque
    @@letters_of_marque
  end

  def self.all
    @@privateers
  end
end
