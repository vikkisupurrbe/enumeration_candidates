# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here
puts "Testing experienced?"
puts experienced?(@candidates[0])

puts "\nTesting find"
pp find(5)
pp find(999)

puts "\nTesting qualified_candidates"
pp qualified_candidates(@candidates)

puts "\nTesting sort_on_experience_and_points"
pp sort_on_experience_and_points(@candidates)

pp @candidates