require_relative '../config/environment'
# require_relative 'seeds.rb'
system("clear")
app = CLI.new
app.welcome_trainer
puts "........"
puts "please press 1, to view your Pokemon database"
app.pokemon_database
app.view_pokemon_database #will refract
app.view_team


