class Pokemon < ActiveRecord::Base 
  has_many :teams
  has_many :trainers, through: :teams

  def get_pokemon_by_name
    self.name
  end
  # this is just an example of methods we will have to make 
end

# can display hash of abilities
# can display hash of skills
