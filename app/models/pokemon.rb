class Pokemon < ActiveRecord::Base 
  has_many :teams
  has_many :trainers, through: :teams
<<<<<<< HEAD

  def get_pokemon_by_name
    self.name
  end
  # this is just an example of methods we will have to make 
=======
>>>>>>> 8d78ba6e8f044b95f95bf810bcb748fc8d01188c
end


