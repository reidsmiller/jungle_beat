class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
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
    beats = self.list.to_string
    `say -r 500 -v Boing #{beats}`
  end
end