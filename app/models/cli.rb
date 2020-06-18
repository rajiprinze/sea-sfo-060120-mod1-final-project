require 'pry'
#  !/usr/bin/env ruby
#  require_relative 'app/models/team.rb'
#  require_relative 'db/seeds.rb'

class CLI 

    def welcome_trainer
        puts "Welcome Trainer! You have finally made it to the Elite 4!"
        sleep 2
        puts "Before you proceed, please answer these questions..."
        puts "What is your Name?"
        trainer_name = gets.chomp
        puts "How old are you?"
        trainer_age = gets.chomp
        puts "Name of your Hometown?"
        trainer_hometown = gets.chomp
        sleep 2
        puts "----------------------------------------------------------------"
        puts  "Ahh Yes! #{trainer_name}! We have heard amazing things about you!"
        sleep 2
        puts "#{trainer_name}, I am sure you are very much eager to start your first battle."
        sleep 2
        puts "Oh Dear! Looks like your Team is currently empty!"
        sleep 2
        puts "Please head to your pokemon storage computer fix that :)."
        sleep 2
        Trainer.all
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
     puts Team.all.map { |pokeman| pokeman.name}
    end
  
    def user_input
        input = gets.chomp
    end
    
    def add_pokemon(user_input)
        new_pokemon = Pokemon.find_by(name: user_input)
        new_pokemon_name = new_pokemon.name
        new_pokemon_id = new_pokemon.id
        new_team = Team.create( name: new_pokemon_name, id: new_pokemon.id )
        # binding.pry
        puts "#{new_pokemon_name} has now been added to your team"
        full_team
    end 

   def remove_pokemon(user_input)
     target = Team.all.find{|pokemon| pokemon.name == user_input}
     Team.all.delete(target)
   end

   def choices
    puts "What would you like to do now?"
    sleep 2
    puts "1. Add Pokemon to team"
    sleep 2
    puts "2. Remove Pokemon to team"
    sleep 2
    puts "3. View Pokemon team"
    sleep 2
    puts "4. Hit any other button to leave once your Team is full"
    sleep 2
    trainer_choice = user_input
    if trainer_choice == "1"
        puts "You have choosen add pokemon, please add pokemon to your team"
        add_pokemon(user_input)
       choices

    elsif trainer_choice == "2"
        puts "Which Pokemon would you like to remove?"
        remove_pokemon(user_input)
        choices
    elsif trainer_choice == "3"
        puts "You have choosen to view your Team"
        puts view_team
       choices
    else
        # full_team
        ending_message
    end
   end

   def full_team
    if Team.all.count == 6
        puts "You have successfully filled your team!"
        choices
        # ending_message 
    elsif Team.all.count > 6
        puts "Sorry to say, you can only have 6 pokemon on your team!"
        choices
    elsif Team.all.count < 6
        puts "You still have more Pokemon to add!"
      end
    end

    def ending_message 
        puts "Fantastic! You are now ready to take on the Elite 4."
        sleep 3
        puts "Please Proceed, The Elite 4 is waiting for you!"
        sleep 3
        puts "Goodluck!"
    end

    def design
        font = TTY::Font.new(:doom)
        pastel = Pastel.new
        puts pastel.yellow(font.write("Pokemon"))
    end

end 



