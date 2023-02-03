class JungleBeat
  attr_accessor :list
  def initialize (string)
    @list = LinkedList.new(string)
  end

  def append(string)
    data_s = string.split(" ")
    data_s.each do |data|
      self.list.append(data)
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