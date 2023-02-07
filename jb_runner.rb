require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

puts '-----------Hello intrepid beat-boxer!------------'
puts 'Welcome to the Beat-O-Matic 40023'
puts 'I have a few questions to set up your sweet beats!'
puts 'First, what phrase would you like to intone?'
puts '-------------------------------------------------'

jb = JungleBeat.new(gets.chomp)

puts "-------------------------------------------------"
puts "Your phrase is: '#{jb.all}'"
puts "If you are satisfied with your phrase, enter 'satisfied'" 
puts "If you would like to re-enter your phrase, enter 're-do'"
puts "-----------------------------------------------"

# Confirm phrase loop
jb.phrase_conf

puts "-----------------------------------------------"
puts "Great!"
puts 'How many times would you like the computer to read your killer beats?'
puts "-----------------------------------------------"

jb.loop(gets.chomp.to_i)

# Replayable method for sandboxing rate and voice
jb.set_rate_and_voice
jb.play_and_again