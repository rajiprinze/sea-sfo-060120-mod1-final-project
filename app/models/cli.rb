require 'pry'
#  !/usr/bin/env ruby
#  require_relative 'app/models/team.rb'
#  require_relative 'db/seeds.rb'

class CLI 
# ignore this, I just wanted to test out TTY gems, but please keep
    # def poke_box
    #     box = TTY::Box.frame "P O K E M O N", "Gott'a Catch'em All", padding: 3, align: :center
    #     print box
    # end
  
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
       end
    end
# how are we going to get the added pokemon into the view team method?
    def view_team
        # Team.all
        Team.all.map { |pokeman| pokeman.name}
        #  Team.all == []

        # binding.pry

    end
  
    # PLEASE DONT CHANGE
    def user_input
        input = gets.chomp
    end
    
# PLEASE DONT CHANGE
    def add_pokemon(user_input)
        
        new_pokemon = Pokemon.find_by(name: user_input)
        new_pokemon_name = new_pokemon.name
        new_pokemon_id = new_pokemon.id
        binding.pry

        # new_team = Team.new( name: new_pokemon_name, pokemon_id: new_pokemon_id, trainer_id: 4)
        binding pry
        # puts "#{new_pokemon_name} has now been added to your name"
        # if team.count is equal to 6, please inform the trainer that their team is full 
        #trainer should not have the option to leave until Team is full
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

    def ending_message 
    puts "Fantastic! You are now ready to take on the Elite 4 #{user_input}."
    puts "Please Proceed, the Elite 4 is waiting for you!"
    puts "Goodluck!"
    end

end 



