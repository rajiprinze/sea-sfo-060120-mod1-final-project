class Cli 
  @attr_accessor :trainer

  def greeting
  puts "Welcome Trainer! You have finally made it to the Elite 4!"
  puts 
  puts "Before you proceed, what is your name?"
  trainer_name = gets.chomp
  @trainer = trainer_name
  puts "Ahh Yes! #{@trainer}! We have heard amazing things about you!"
  puts "#{@trainer}, I am sure you are very much eager to start your first battle."
  puts "Before you go, we reccomend you review your team wisely before you challenge the first opponent of the Elite 4."
  puts "Please head your pokemon storage computer to do so."
  puts 
  puts "........"
  puts "Welcome! what would you like to do?"
  end
end

