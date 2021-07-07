class Team < ActiveRecord::Base 
  belongs_to :pokemon_id
  belongs_to :trainer_id


end


