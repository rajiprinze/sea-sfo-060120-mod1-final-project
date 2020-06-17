require_relative '../config/environment'
# require_relative 'seeds.rb'
system("clear")
app = CLI.new
# box = TTY::Box.frame "P O K E M O N", padding: 3, align: :center
# print box
app.welcome_trainer
puts "---------------------------------------"
puts 
puts "please press 1, to view your Pokemon database"
app.pokemon_database 
app.view_team
puts "Your team is currently empty"
puts "Please choose a Pokemon to add to your team"
app.user_input



