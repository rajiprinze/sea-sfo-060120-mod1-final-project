#  #!/usr/bin/env ruby
#  require_relative 'app/models/team.rb'
#  require_relative 'db/seeds.rb'

class CLI 
# def get_trainer
# trainer_name = gets.chomp
# end 

    def add_pokemon
        pokemon = gets.chomp
        if pokemon.find
        end
    end 

    def empty_team
        puts "hello before your big fight you are going to need a pokemon "
        add_pokemon
    end 

    def view_team
        Team.all
    end 

end 


## team needs to limit the amount of pokemon
## 

# uts "Welcome Trainer! You have finally made it to the Elite 4!"
# puts 
# puts "Before you proceed, what is your name?"
# trainer_name = gets.chomp
# puts "Ahh Yes! #{trainer_name}! We have heard amazing things about you!"
# puts "#{trainer_name}, I am sure you are very much eager to start your first battle."
# puts "Before you go, we reccomend you review your team wisely before you challenge the first opponent of the Elite 4."
# puts "Please head your pokemon storage computer to do so."
# puts 
# puts "........"
puts "Welcome! what would 'view_team', 'add_to_team', 'remove_from team' "


# / this is just me playing around with the cli method, it is just an idea i thought of for our starting point
# obviously it needs work which can be done together tuesday 6/16