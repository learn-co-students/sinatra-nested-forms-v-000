class Pirate
    attr_accessor :name, :height, :weight

      ALL = []

    def initialize (name=nil, height=nil, weight=nil)
      @name = name
      @height = height
      @weight = weight

      ALL << self

  end

  def self.all
    ALL
  end
end
