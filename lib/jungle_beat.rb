class JungleBeat
  attr_accessor :list, :data, :val_library
  def initialize (data = nil)
    @list = LinkedList.new
    @val_library = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu"]
    @data = self.autoappend(data)
  end

  def append(data)
      arr = data.split(" ")
      arr.each do |data_s|
        if val_library.include?(data_s)
          self.list.append(data_s)
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
      end
    end
  end

  def count
    list.count
  end

  def play
    beats = self.all
    `say -r 250 -v Boing #{beats}`
  end

  def all
    self.list.to_string
  end
end