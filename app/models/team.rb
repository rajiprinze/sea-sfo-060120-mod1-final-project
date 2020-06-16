class Team < ActiveRecord::Base 
  belongs_to :pokemon
  belongs_to :trainer

end


