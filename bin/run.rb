require_relative '../config/environment'
require "pry"
# require_relative 'seeds.rb'
system("clear")
app = CLI.new
app.design
app.welcome_trainer
puts "-------------------------"
puts "please press 1, to view your Pokemon database"
puts "----------------------------------"
puts "please press 1, to view your Pokemon database"
# pokemon = gets.chomp
app.pokemon_database
puts "Please choose a Pokemon to add to your team"
# pokemon = gets.chomp
<<<<<<< HEAD
<<<<<<< HEAD
app.add_pokemon(gets.chomp)
# binding .pry
# puts "........"
# puts "please press 1, to view your Pokemon database"
# app.pokemon_database
# app.add_pokemon(app.user_input)
# binding.pry
# app.remove_pokemon(gets.chomp)
# binding.pry

# puts app.view_team
=======
=======
>>>>>>> 89775caa888f91a3c6c491c956436500f38135b4
app.add_pokemon(app.user_input)
app.choices
puts app.view_team
<<<<<<< HEAD
>>>>>>> 87764cdd0bfd5c92ad85ad19ed0dd21fc61d9470
=======
>>>>>>> 89775caa888f91a3c6c491c956436500f38135b4
# binding.pry
puts app.add_pokemon(app.user_input)
app.view_team
# binding.pry
puts app.view_team

app.ending_message 



