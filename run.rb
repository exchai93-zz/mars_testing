require './lib/mars_rover.rb'

puts "Please enter a file name, or 'input.txt'"
file = gets.chomp.strip
mars_rover = MarsRover.new(file)

puts "Moving the Rovers..."
mars_rover.parse_input
mars_rover.move_rovers

puts mars_rover.output
