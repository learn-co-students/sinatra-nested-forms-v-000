class Ship < ActiveRecord::Base
  belongs_to :pirate
  
  # Allow "type" column in table
  self.inheritance_column = :_type_disabled
  
  def self.clear
    @@ships = []
  end
end