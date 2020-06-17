require 'pry'
#  #!/usr/bin/env ruby
#  require_relative 'app/models/team.rb'
#  require_relative 'db/seeds.rb'

class CLI 
# ignore this, I just wanted to test out TTY gems, but please keep
    def poke_box
        box = TTY::Box.frame(width: 30, height: 10, border: :thick)
        print box
    end
  
    def welcome_trainer
        puts "Welcome Trainer! You have finally made it to the Elite 4!"
        puts "Before you proceed, what is your name?"
        trainer_name = user_input
        puts "----------------------------------------------------------------"
        puts  "Ahh Yes! #{trainer_name}! We have heard amazing things about you!"
        puts "#{trainer_name}, I am sure you are very much eager to start your first battle."
        puts "Please head your pokemon storage computer to do so."
    end

    def pokemon_database 
        inputs = gets.chomp
        if inputs == "1"
            puts "You have choosen to view your pokemon database"
            view_pokemon_database
        else 
            puts "Please choose a valid input"
            pokemon_database
        end
    end

    def view_pokemon_database
       Pokemon.all.select do |pokemon|
       p "#{pokemon.name}, level: #{pokemon.level}, skill: #{pokemon.skill}, ability: #{pokemon.ability}"
        # binding.pry
       end
    end

    def view_team
         Team.all == []
    end 

    # PLEASE DONT CHANGE
    def user_input
        input = gets.chomp
    end
    
# PLEASE DONT CHANGE

    def add_pokemon(user_input)
        new_pokemon = Pokemon.find_by(name: user_input)
        new_pokemon.name 
     binding.pry
   end 

   def remove_pokemon

   end
#    def exit 
#     if user_input == "exit"
#         # brain fart trying to use exit as an input
#    end
#    binding.pry


end 


