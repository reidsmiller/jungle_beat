require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat.rb'

p '-----------Hello intrepid beat-boxer!------------'
p 'Welcome to the Beat-O-Matic 40023'
p 'I have a few questions to set up your sweet beats!'
p '__________________________________________________'

p 'First, what phrase would you like to intone?'

jb = JungleBeat.new(gets.chomp)

require 'pry'; binding.pry
