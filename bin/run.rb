require_relative '../config/environment'
require "pry"
# require_relative 'seeds.rb'
system("clear")
app = CLI.new
# app.design
# app.welcome_trainer
# pokemon = gets.chomp
# app.add_pokemon(pokemon)
# binding .pry
# puts "........"
# puts "please press 1, to view your Pokemon database"
# app.pokemon_database
# app.add_pokemon(app.user_input)
# binding.pry
app.remove_pokemon(gets.chomp)
binding.pry

# puts app.view_team
# binding.pry
# puts app.add_pokemon(app.user_input)
# app.view_team
# binding.pry
# puts "Please choose a Pokemon to add to your team"
# puts "---------------------------------------"
# puts "please press 1, to view your Pokemon database"
# app.pokemon_database 
# puts "Your team is currently empty"
# puts "Please choose a Pokemon to add to youcr team"
# puts 
# app.view_team
# puts app.add_pokemon(app.user_input)
# puts "---------------------------------------"
# puts 
# app.choices


