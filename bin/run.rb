require_relative '../config/environment'
require "pry"


system("clear")
app = CLI.new
app.design
app.welcome_trainer
puts "---------------------------------------------"
puts "please press 1, to view your Pokemon database"
app.pokemon_database
puts
puts "Please choose a Pokemon to add to your team"
app.add_pokemon(app.user_input)
app.choices
puts app.add_pokemon(app.user_input)
app.full_team
app.ending_message 



