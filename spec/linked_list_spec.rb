require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  describe 'starts with a head'
    it 'exists' do
      list = LinkedList.new

      expect(list).to be_instance_of(LinkedList)
      expect(list.head).to be nil
    end

    xit 'counts nodes' do
      list = LinkedList.new
      list.append("doop")

      expect(list.count).to eq(1)
    end

    xit 'creates string of data' do
      list = LinkedList.new
      list.append("doop")

      expect(list.to_string).to eq("doop")
    end
end