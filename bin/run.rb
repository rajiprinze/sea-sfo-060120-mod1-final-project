require_relative '../config/environment'
# require_relative 'seeds.rb'
system("clear")
app = CLI.new
app.welcome_trainer
# pokemon = gets.chomp
# app.add_pokemon(pokemon)
# binding .pry
# puts "........"
# puts "please press 1, to view your Pokemon database"
# app.pokemon_database 
# app.view_team
puts app.add_pokemon(app.user_input)
app.view_team
# puts "Please choose a Pokemon to add to your team"
# binding.pry 
# app.user_input

