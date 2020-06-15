class Trainer < ActiveRecord::Base 
  has_many :teams
  has_many :pokemons, through: :teams
end

#the trainer should be able to pick the pokemon and put in the team hash
# the trainer should be able to remove a pokemon 
