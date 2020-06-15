class Team < ActiveRecord::Base 
  belongs_to :pokemon
  belongs_to :trainer
end
# is associated to the trainer
# is associated to the pokemon
# can have a pokemon added to team
# can have one removed from team 
# can display array of abilities
# can display array of skills