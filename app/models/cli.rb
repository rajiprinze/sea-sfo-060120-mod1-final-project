require 'pry'
#  !/usr/bin/env ruby
#  require_relative 'app/models/team.rb'
#  require_relative 'db/seeds.rb'

class CLI 
    def welcome_trainer
        puts "Welcome Trainer! You have finally made it to the Elite 4!"
        puts "Before you proceed, please anser these questions..."
        puts "What is your Name?"
        trainer_name = user_input
        puts "How old are you?"
        trainer_age = user_input
        puts "Name of your Hometown?"
        trainer_hometown = user_input
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
    def view_team
        # Team.all
        Team.all.map { |pokeman| pokeman.name}
        #  Team.all == []

        # binding.pry

    end
  
    def user_input
        input = gets.chomp
    end
    
    def add_pokemon(user_input)
        
        new_pokemon = Pokemon.find_by(name: user_input)
        new_pokemon_name = new_pokemon.name
        new_pokemon_id = new_pokemon.id
        binding.pry

        # new_team = Team.new( name: new_pokemon_name, pokemon_id: new_pokemon_id, trainer_id: 4)
        binding pry
        # puts "#{new_pokemon_name} has now been added to your name"

        # if Team.count == 6
        #     puts "You have successfully filled your team!"
        # elsif Team.count > 6
        #     puts "Sorry to say, you can only have 6 pokemon on your team!"
        # end
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

    def design
        font = TTY::Font.new(:doom)
        pastel = Pastel.new
        puts pastel.yellow(font.write("Pokemon"))
    end

end 



