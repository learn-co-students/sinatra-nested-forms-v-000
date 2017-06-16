class Pirate

#============================================================
#macros etc.
attr_accessor :name, :weight, :height

@@all = []


def initialize 
@@all << self
end

#============================================================
#instance



#============================================================
#class
def self.all
@@all
end


def self.delete
@@all = []
end


#============================================================
#private


end#EOC