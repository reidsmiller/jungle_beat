class JungleBeat
  attr_accessor :list, :string
  def initialize (string = nil)
    @list = LinkedList.new
    @string = if string != nil
                self.append(string)
              else
                string
              end
  end

  def append(data)
    arr = data.split(" ")
    arr.each do |data_s|
      self.list.append(data_s)
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