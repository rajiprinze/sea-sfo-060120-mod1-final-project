
#  #!/usr/bin/env ruby
#  require_relative 'app/models/team.rb'
#  require_relative 'db/seeds.rb'

class CLI 
    def welcome_trainer
        puts "Welcome Trainer! You have finally made it to the Elite 4!"
        puts "Before you proceed, what is your name?"
        trainer_name = gets.chomp
        puts "Ahh Yes! #{trainer_name}! We have heard amazing things about you!"
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
       p "#{pokemon.name}, level: #{pokemon.level}, skill: #{pokemon.skill}, ability:#{pokemon.ability}"
        # binding.pry
       end
    # didnt give me what i wanted but ITS CLOSE ENOUGH!!! for now lol
    end

    def view_team
         Team.all == []
         puts "Your team is currently empty"
    end 

    # call add_pokemon after user_input is received
    def user_input
        input = gets.chomp
        add_pokemon(input)
    end
    

    def add_pokemon(pokemon_name)
        new_pokemon = Pokemon.find_by(name: pokemon_name)
       Team.all <<  new_pokemon.name #is the .name needed??
       binding.pry
   end 

   def remove_pokemon

   end
end 



