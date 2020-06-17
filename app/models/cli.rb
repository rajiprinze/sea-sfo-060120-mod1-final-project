
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
        else 
            puts "Please choose a valid input"
        end
    end

    def view_pokemon_database
       p Pokemon.all.to_a
        # binding.pry
    end

    def add_pokemon(pokemon)
        new_pokemon = Pokemon.all.find_by name: pokemon
        new_pokemon.name
        new_team = Team.create(name: new_pokemon)
        Team.all
        ## can't add to Team.all  need to make create team 
        # make something = Team.new() not sure about agurments 
        # binding.pry
    end 


    def remove_pokemon (pokemon)


    end

    def view_team

        Team.all
        if Team.all == []
            puts "Please choose a Pokemon to start"
            # binding.pry
        end 
        # binding.pry
    end 
end




