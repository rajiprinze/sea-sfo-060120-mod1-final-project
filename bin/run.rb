require_relative '../config/environment'
# require_relative 'seeds.rb'
system("clear")
app = CLI.new
# box = TTY::Box.frame "P O K E M O N", padding: 3, align: :center
# print box
app.welcome_trainer
# pokemon = gets.chomp
# app.add_pokemon(pokemon)
puts "please press 1, to view your Pokemon database"
app.pokemon_database 
app.view_team
puts app.add_pokemon(app.user_input)
puts "---------------------------------------"
puts 
puts "please press 1, to view your Pokemon database"
app.pokemon_database 
app.view_team
puts "Your team is currently empty"
puts "Please choose a Pokemon to add to your team"
# binding.pry 
# app.user_input


