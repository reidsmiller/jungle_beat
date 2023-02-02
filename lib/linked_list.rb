class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(data)
    if head == nil
      self.head = Node.new(data)
    else
      current_node = head
      new_node = Node.new(data)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end


  def prepend(data)
    if head == nil
      self.head = Node.new(data)
    else
      new_node = Node.new(data)
      new_node.next_node = head
      self.head = new_node
    end
  end
  
  def insert(index, data)
    current_node = head
    new_node = Node.new(data)
    (index - 1).times do
      current_node = current_node.next_node
    end
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end
  
  def count
    if head == nil
      count = 0
    else
      count = 1
      current_node = head
      while current_node.next_node != nil
        current_node = current_node.next_node
        count += 1
      end
    end
    count
  end
  
  def to_string
    array = []
    if head == nil
      p "No data in head"
    else
      current_node = head
      while current_node.next_node != nil
        array << current_node.data
        current_node = current_node.next_node
      end
      array << current_node.data
    end
    array.join(" ")
  end
end