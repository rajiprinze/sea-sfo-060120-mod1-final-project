class Pokemon < ActiveRecord::Base 
  has_many :teams
  has_many :trainers, through: :teams
end

# can display hash of abilities
# can display hash of skills
