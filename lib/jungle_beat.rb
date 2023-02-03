class JungleBeat
  attr_accessor :list, :string
  def initialize (string = nil)
    @list = LinkedList.new
    @string = self.append(string)
  end

  def append(data)
    data_m = data.split(" ")
    data_m.each do |data_s|
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