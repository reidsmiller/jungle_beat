class LinkedList
  attr_accessor :head, :to_string
  def initialize
    @head = nil
  end

  def append(string)
    if head == nil
      self.head = Node.new(string)
    else
      current_node = head
      new_node = Node.new(string)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def count
    if head == nil
      count = 0
    else
      count = 1
      current_node = self.head
      while current_node.next_node != nil
        current_node = current_node.next_node
        count += 1
      end
    end
    count
  end

  def to_string
    head.data
  end
end