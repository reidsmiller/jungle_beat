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

  describe '#append multiple nodes' do
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

  describe '#insert and prepend' do
    it 'can prepend a node' do
      list = LinkedList.new
      list.append("plop")

      expect(list.to_string).to eq("plop")

      list.append("suu")
      list.prepend("dop")

      expect(list.to_string).to eq("dop plop suu")
    end

    it 'counts correctly' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")

      expect(list.count).to eq(3)
    end

    it 'can insert a node' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1, "woo")

      expect(list.to_string).to eq("dop woo plop suu")

      list.insert(3, "foo")

      expect(list.to_string).to eq("dop woo plop foo suu")
    end
  end

  describe '#find, pop, and includes' do
    it 'can find segment by index position' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.find(2, 1)).to eq("shi")
      expect(list.find(1, 3)).to eq("woo shi shu")
    end


    it 'knows if it includes a string' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.includes?("deep")).to be true
      expect(list.includes?("dep")).to be false
    end
  end
end