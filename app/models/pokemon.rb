
class Pokemon < ActiveRecord::Base 
  has_many :teams
  has_many :trainers, through: :teams
end



