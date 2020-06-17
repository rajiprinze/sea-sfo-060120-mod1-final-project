require 'pry'
#  #!/usr/bin/env ruby
#  require_relative 'app/models/team.rb'
#  require_relative 'db/seeds.rb'

class CLI 
# ignore this, I just wanted to test out TTY gems, but please keep
    def poke_box
        box = TTY::Box.frame "P O K E M O N", "Gott'a Catch'em All", padding: 3, align: :center
        print box
    end

    def trainer_name 
        trainer_input = get.chomp
        trainer = trainer_input 
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
# how are we going to get the added pokemon into the view team method?
    def view_team
         Team.all == []
    end
  
    # PLEASE DONT CHANGE
    def user_input
        input = gets.chomp
    end
    
# PLEASE DONT CHANGE
    def add_pokemon(user_input)
        # binding.pry
        new_pokemon = Pokemon.find_by(name: user_input)
        new_pokemon_name = new_pokemon.name
        new_team = Team.new( name: new_pokemon_name)
        puts "#{new_pokemon_name} has now been added to your name"
    #    binding.pry
   end 

   def remove_pokemon(user_input)
    # puts pokemon has been removes
   end

   def choices
    puts "What would you like to do now?"
    puts "1. Add Pokemon to team"
    puts "2. Remove Pokemon to team"
    puts "3. View Pokemon team"
    if user_input == "1"
    #    add_pokemon(user_input)
    elsif user_input == "2"
        # remove_pokemon(user_input)
    elsif user_input == "3"
        # view_team
    else
        puts "Please pick a valid option"
        choices
    end
   end

#    def six_members
#     if # if there are 6 pokemon in the team, we must inform the trainer and ask
#         #  "are you sure this is the team you would like to use? (y/n)"
#     else 
#         # please continue to choose your pokemon
#     end 
#    end

# ending message 
# puts "You are now ready to take on the Elite 4 #{trainer}"

end 



