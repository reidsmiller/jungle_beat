require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

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

p 'What rate would you like it to be read? (~500 is super fast, 100 is slow)'

jb.rate = (gets.chomp.to_i)

p 'What voice would you like to read it?'
p '-------------------------------------------------'
p 'Some options are: Alice, Cello, Jester, Boing, Whisper, Albert,'
p 'Organ, Superstar, and Trinoids.'

jb.voice = (gets.chomp)

p '-----------------Okay!!!!!!!!----------------------'
p "We're all set!! You've set up your beats!!!"
p "Are you ready for your beat so killer that today will forever be"
p "remembered as the day you created these (un)godly amazing killer sounds?!?!?"
p "(yes/no)"

ans = (gets.chomp)
if ans == "yes"
  p "WOOOO HERE THEY ARE"
else
  p "TOO BAD!!!!!!! WE'VE COME TOO FAR TO BACK OUT NOW!!!!"
end

jb.play

"WOO!! Grammy's here we come!!!"