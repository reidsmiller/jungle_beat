class RunInit
  attr_accessor :jungle_beat
  def initialize (jungle_beat)
    @jungle_beat = self.confirm(jungle_beat)
  end

  def confirm(data)
    jb = JungleBeat.new(data)
    p "If you would like to re-enter your phrase, enter 'yes', if you are satisfied, 'no'"
    ans = (gets.chomp)
    if ans == "yes"
      p "Enter your new phrase"
      jb = JungleBeat.new(gets.chomp)
    else
      p "Great!"
    end
  end
end