require_relative '../config/environment'
# require_relative 'seeds.rb'
system("clear")
app = CLI.new
app.poke_box
app.welcome_trainer
puts "---------------------------------------"
puts "please press 1, to view your Pokemon database"
app.pokemon_database 
puts "Your team is currently empty"
puts "Please choose a Pokemon to add to your team"
puts 
app.view_team
puts app.add_pokemon(app.user_input)
puts "---------------------------------------"
puts 
app.choices

# app.view_team




# pokemon = gets.chomp
# app.add_pokemon(pokemon)