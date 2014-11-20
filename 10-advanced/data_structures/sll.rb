class SinglyLinkedList
  attr_accessor :head

  def initialize(value=nil)
    @head = Node.new(value) if value
  end

  def each
    next_node = @head
    while next_node
      yeild next_node.value if block_given?
      next_node = next_node.next
    end
    self
  end

  def last
    last_node = @head

    while last_node.next
      last_node = last_node.next
    end
    last_node
  end

  def append(value)
    new_node = Node.new(value)

    last_node = @head

    # Find the last node
    while last_node.next
      last_node = last_node.next
    end

    last_node.next = new_node
  end

  def insertAfter(value, new_value)
    successor = self.find(value)
    new_node = Node.new(new_value)
    new_node.next = successor.next
    successor.next = new_node
    return value, new_value
  end

  def prepend(value) #unshift
    self.append(value)
  end

  def remove #pop() removes the last one
    node = self.last
  end

  def find( value )  #returns the node with value or nil
    next_node = @head
    while next_node.next && next_node.value != value
      next_node = next_node.next
    end
    next_node
  end

  def reverse #returns new ssl in reverse order
    new_node = self
    i = 0
    length = new_node.length - 1
    new_node = new_node.last
    new_node = new_node.next
    while ( i <= length )
      new_node = @head.last
      new_node.next = new_node.first
      i += 1
    end
    new_node.last.next = nil
    new_node
  end

  def reverse!
  end

  def get(index)
    node = @head

  end

  def [](index)
  end

  def []=(index)
  end

  def length
    count = 0
    next_node = @head
    while next_node
      count += 1
      next_node = next_node.next
    end
    count
  end


  class Node
    attr_accessor :value, :next

    def initialize(value=nil)
      @value = value
      @next = nil
    end

    def to_s
      @value || nil
    end
  end
end

require 'pry'
binding.pry