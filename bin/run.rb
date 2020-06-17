require_relative '../config/environment'
require "pry"
# require_relative 'seeds.rb'
system("clear")
app = CLI.new
app.design
app.welcome_trainer
puts "-------------------------"
puts "please press 1, to view your Pokemon database"
app.pokemon_database
puts "Please choose a Pokemon to add to your team"
# pokemon = gets.chomp
app.add_pokemon(app.user_input)
app.choices
# binding.pry
puts app.view_team

app.ending_message 



