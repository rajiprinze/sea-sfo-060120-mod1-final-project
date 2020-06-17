class Trainer < ActiveRecord::Base 
  has_many :teams
  has_many :pokemons, through: :teams
end



