class JungleBeat
  attr_accessor :list, :data, :val_library, :voice, :rate
  def initialize (data = nil)
    @list = LinkedList.new
    @val_library = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu", "dop", "wop"]
    @data = self.autoappend(data)
    @voice = "Boing"
    @rate = 250
  end

  def append(data)
    data.downcase
    arr = data.split(" ")
    arr.each do |data_s|
      if val_library.include?(data_s)
        self.list.append(data_s)
      else
        puts '-------------------------------------------------'
        puts "#{data_s} <-- is not an approved word. I have taken the liberty of removing words from your phrase that were not on the list. Here is a list of approved words:"
        puts self.val_library
        arr.delete(data_s)
      end
    end
  end

  def autoappend(data)
    if data != nil
      self.append(data)
    else
      data
    end
  end

  def prepend(data)
    arr = data.split(" ")
    arr.each do |data_s|
      if val_library.include?(data_s)
        self.list.prepend(data_s)
      else
        puts '-------------------------------------------------'
        puts "#{data_s} <-- is not an approved word. I have taken the liberty of removing words from your phrase that were not on the list. Here is a list of approved words:"
        puts self.val_library
        arr.delete(data_s)
      end
    end
  end

  def count
    list.count
  end

  def play
    beats = self.all
    `say -r #{rate} -v #{voice} #{beats}`
  end

  def loop(num)
    beats = self.all
    (num - 1).times do
      self.append(beats)
    end
  end

  def all
    self.list.to_string
  end

  def reset_rate
    self.rate = 200
  end

  def reset_voice
    self.voice = "Boing"
  end
  
  # Terminal interfacing methods through jb_runner
  def phrase_conf
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
  end
  
  def set_rate_and_voice
    self.reset_rate
    self.reset_voice
    puts "-----------------------------------------------"
    puts 'What rate would you like it to be read? (300 is super fast, 100 is slow)'
    puts "Enter 'default' for the default rate of 200."
    puts "-----------------------------------------------"
    
    rate = (gets.chomp)
    if rate != "default"
      self.rate = rate.to_i
    end
    
    puts '-------------------------------------------------'
    puts 'What voice would you like to read it?'
    puts 'Some options are: Alice, Cello, Jester, Whisper, Albert, Organ, Superstar, and Trinoids.'
    puts "Enter 'default' for the default voice 'Boing'."
    puts "-----------------------------------------------"
    
    voice = (gets.chomp)
    if voice != "default"
      self.voice = voice
    end
  end
  
  def play_and_again
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
  
    self.play
  
    puts "-----------------------------------------------"
    puts "WOO!! Grammy's here we come!!!"
    puts "Would you like to play around with your beats some more?"
    puts "-----------------------------------------------"
    ans = (gets.chomp)
    if ans == "yes"
      self.set_rate_and_voice
      self.play_and_again
    else
      puts "-----------------------------------------------"
      puts "Thank you for your inspirational beats."
      puts "Keep on Rockin'!"
      puts "-----------------------------------------------"
    end
  end
end