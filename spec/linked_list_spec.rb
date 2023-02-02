require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  describe '#head' do
    it 'exists' do
      list = LinkedList.new

      expect(list).to be_instance_of(LinkedList)
      expect(list.head).to be nil
    end

    it 'counts' do
      list = LinkedList.new
      list.append("doop")

      expect(list.count).to eq(1)
    end

    it 'creates string' do
      list = LinkedList.new
      list.append("doop")

      expect(list.to_string).to eq("doop")
    end
  end

  describe '#multiple nodes' do
    it 'can append another node' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.head.next_node.data).to eq("deep")
    end

    it 'can count multiple nodes' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.count).to eq(2)
    end

    it 'can join node data into single string' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.to_string).to eq("doop deep")
    end
  end
end