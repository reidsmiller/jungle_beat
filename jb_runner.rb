require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'
require './lib/runinit'

p '-----------Hello intrepid beat-boxer!------------'
p 'Welcome to the Beat-O-Matic 40023'
p 'I have a few questions to set up your sweet beats!'
p '-------------------------------------------------'

p 'First, what phrase would you like to intone?'

jb = JungleBeat.new(gets.chomp)

p "-------------------------------------------------"
p "If you would like to re-enter your phrase, enter 'yes', if you are satisfied, 'no'"

ans = (gets.chomp)
if ans == "yes"
  p "Enter your new phrase"
  jb = JungleBeat.new(gets.chomp)
else
  p "Great!"
end

p 'How many times would you like the computer to read your killer beats?'

jb.loop(gets.chomp.to_i)

require 'pry'; binding.pry

