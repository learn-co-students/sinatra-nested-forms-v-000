class Ship < ActiveRecord::Base
  belongs_to :pirate
  
  def self.clear
    @@ships = []
  end
end