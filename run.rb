require './lib/mars_rover.rb'

puts "Please enter the file name 'test_input.txt'"
file = gets.chomp.strip
mars_rover = MarsRover.new(file)

puts "Let's go. Moving the Rovers..."
mars_rover.parse_input
mars_rover.move_rovers
mars_rover.print_output
