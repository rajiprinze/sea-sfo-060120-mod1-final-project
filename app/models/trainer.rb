class Trainer < ActiveRecord::Base 
  has_many :teams
  has_many :pokemons, through: :teams
end

# should see the ability of the pokemon in the team
#should see the skills of the pokemon from the team

