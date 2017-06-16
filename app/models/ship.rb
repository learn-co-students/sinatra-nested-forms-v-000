class Ship

#============================================================
#macros etc.
attr_accessor :name, :type, :booty

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


def self.clear
@@all = []
end


#============================================================
#private


end#EOC