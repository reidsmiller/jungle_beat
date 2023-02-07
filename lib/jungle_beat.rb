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
        p "#{data_s} <-- is not an approved word. Here is a list of approved words. I have taken the liberty of removing words from your phrase that were not on the list."
        p self.val_library
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
        p "#{data_s} <-- is not an approved word. Here is a list of approved words. I have taken the liberty of removing words from your phrase that were not on the list."
        p self.val_library
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
    self.rate = 250
  end

  def reset_voice
    self.voice = "Boing"
  end
end