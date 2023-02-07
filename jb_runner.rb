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

ans = (gets.chomp)
while ans == "re-do"
  puts "-----------------------------------------------"
  puts "Enter your new phrase"
  jb = JungleBeat.new(gets.chomp)
  puts "-----------------------------------------------"
  puts "Your phrase is: '#{jb.all}'"
  puts "If you are satisfied with your phrase, enter 'satisfied'" 
  puts "If you would like to re-enter your phrase, enter 're-do'"
  puts "-----------------------------------------------"
  ans = (gets.chomp)
end

puts "-----------------------------------------------"
puts "Great!"
puts 'How many times would you like the computer to read your killer beats?'
puts "-----------------------------------------------"

jb.loop(gets.chomp.to_i)

puts "-----------------------------------------------"
puts 'What rate would you like it to be read? (300 is super fast, 100 is slow)'
puts "-----------------------------------------------"

jb.rate = (gets.chomp.to_i)

puts '-------------------------------------------------'
puts 'What voice would you like to read it?'
puts 'Some options are: Alice, Cello, Jester, Boing, Whisper, Albert, Organ, Superstar, and Trinoids.'
puts "-----------------------------------------------"

jb.voice = (gets.chomp)

puts '-----------------Okay!!!!!!!!----------------------'
puts "We're all set!! You've set up your beats!!!"
puts "Are you ready for your beat so killer that today will forever be remembered as the day you created these (un)godly amazing killer sounds?!?!?"
puts "(yes/no)"
puts "-----------------------------------------------"

ans = (gets.chomp)
if ans == "yes"
  puts "-----------------------------------------------"
  puts "WOOOO HERE THEY ARE"
  puts "-----------------------------------------------"
else
  puts "-----------------------------------------------"
  puts "TOO BAD!!!!!!! WE'VE COME TOO FAR TO BACK OUT NOW!!!!"
  puts "-----------------------------------------------"
end

jb.play

puts "-----------------------------------------------"
puts "WOO!! Grammy's here we come!!!"
puts "Thank you for your inspirational beats."
puts "-----------------------------------------------"