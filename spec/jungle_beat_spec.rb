require 'rspec'
require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'

RSpec.describe JungleBeat do
  describe '#initialize and chain methods' do
    it 'exists' do
      jb = JungleBeat.new

      expect(jb).to be_instance_of(JungleBeat)
      expect(jb.list.head).to be nil
    end

    it 'can append multiple strings into link chain' do
      jb = JungleBeat.new

      jb.append("deep doo ditt")

      expect(jb.list.head.data).to eq("deep")
      expect(jb.list.head.next_node.data).to eq("doo")
    end

    it 'can append even further' do
      jb = JungleBeat.new

      jb.append("deep doo ditt")
      jb.append("woo hoo shu")

      expect(jb.count).to eq(6)
    end

    it 'can prepend multiple strings into link chain' do
      jb = JungleBeat.new("deep")

      jb.prepend("tee tee tee Mississippi")

      expect(jb.all).to eq("tee tee tee deep")
    end
  end

  describe '#Playing Beats' do
    it 'plays sounds' do
      jb = JungleBeat.new
      jb.append("deep doo ditt woo hoo shu")

      expect(jb.count).to eq(6)
      expect(jb.list.count).to eq(6)

      jb.play
    end
  end

  describe '#Verification Library' do
    it 'can call all as to_string' do
      jb = JungleBeat.new("deep")
      
      
      expect(jb.all).to eq("deep")
    end

    it 'refuses entries not in validation library' do
      jb = JungleBeat.new("deep")

      jb.append("Mississippi")

      expect(jb.all).to eq("deep")
    end
  end

  describe '#Speed and Voice' do
    it 'has default voice and rate attributes' do
      jb = JungleBeat.new("deep dop dop deep")

      expect(jb.count).to eq(4)
      expect(jb.voice).to eq("Boing")
      expect(jb.rate).to eq(250)
    end

    it 'can change voice and rate' do
      jb = JungleBeat.new("deep dop dop deep")

      jb.voice = "Daniel"
      jb.rate = 100

      expect(jb.voice).to eq("Daniel")
      expect(jb.rate).to eq(100)
      jb.play
      expect(jb.count).to eq(4)
    end

    it 'can reset to default voice and rate' do
      jb = JungleBeat.new("deep dop dop deep")

      jb.reset_rate
      jb.reset_voice

      require 'pry'; binding.pry
      expect(jb.rate).to eq(250)
      expect(jb.voice).to eq("Boing")
      jb.play
      expect(jb.count).to eq(4)
    end
  end
end