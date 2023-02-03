require 'rspec'
require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'

RSpec.describe JungleBeat do
  describe '#initialize' do
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
  end
end