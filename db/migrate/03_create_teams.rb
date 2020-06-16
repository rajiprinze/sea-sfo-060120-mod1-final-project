class CreateTeams < ActiveRecord::Migration[5.2]
  def change 
    create_table :teams do |t|
      t.string :name
      t.integer :pokemon_id
      t.integer :trainer_id
      
    end
  end
end