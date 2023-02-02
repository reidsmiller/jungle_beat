require 'rspec'
require './lib/node'

RSpec.describe Node do
  it 'exits' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
    expect(node.next_node).to be nil
  end
end