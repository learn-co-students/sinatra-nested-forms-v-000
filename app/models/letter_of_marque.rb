class LetterOfMarque
  attr_reader :issuing_nation, :crown_sovereign, :designated_enemy

  @@letters_of_marque = []

  def initialize(args)
    @issuing_nation = args[:issuing_nation]
    @crown_sovereign = args[:crown_sovereign]
    @designated_enemy = args[:designated_enemy]
    @@letters_of_marque << self
  end

  def self.all
    @@letters_of_marque
  end

  def self.clear
    @@letters_of_marque = []
  end

end
