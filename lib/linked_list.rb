# frozen_string_literal: true

# This class creates a linked list
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    return @head = Node.new(value) if @head.nil?
    
    current = @head
    current = current.next_node while current.next_node != nil
    current.next_node = Node.new(value)
  end

  def prepend!(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

  def size
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
  end

  def size_recursive(node = @head)
    return 0 if node.nil?

    return 1 + size_recursive(node.next_node)
  end

  def head_node
    return 'Empty list...' if head.nil?

    @head
  end

  def tail
    node = @head
    ref_last = nil

    while node
      ref_last = node
      node = node.next_node
    end

    ref_last
  end

  def at(index)
    index = index.to_i
    return 'Index out of range...' if index > size - 1 || index.negative?
    current = @head
    count = 0
    while current
      return current if count == index

      current = current.next_node 
      count += 1
    end
  end

  def pop
    return if head.nil?

    return @head = nil if head.next_node.nil?

    current = @head
    previous = nil

    while current.next_node
      previous = current
      current = current.next_node
    end

    previous.next_node = nil
  end

  def contains?(value)
    return false if head.nil?
    current = @head

    while current
      return true if current.data == value
      current = current.next_node
    end

    false
  end

  def contains_recursive?(value, current=@head)
    return false if current.nil?
    return true if current.data == value
    return false if current.next_node.nil?
    contains_recursive?(value, current.next_node)
  end

  def find(value, node = @head, counter = 0)
    return if node.nil?
    return counter if node.data == value
    find(value, node.next_node, counter += 1)
  end

  def to_s(list = @head)
    return puts 'nil' if list.nil? 
    print "( #{list.data} ) -> "
    to_s(list.next_node)
  end
 
  def insert_at(value, index)
    index = index.to_i
    return 'Wrong index...' if index < 0 || index > size - 1
    current = @head 
    insert = Node.new(value)
    prev = nil 
    count = 0

    while count < index 
      prev = current 
      count += 1 
      current = current.next_node 
    end

    if index == 0 
      insert.next_node = current 
      @head = insert 
      return head
    else 
      insert.next_node = current
      prev.next_node = insert 
      return head 
    end
  end

  def remove_at(index)
    index = index.to_i 
    return 'Wrong index...' if index < 0 || index > size - 1 
    return if head.nil?  
    current = @head 
    prev = nil 
    count = 0 

    while count < index 
      prev = current 
      count += 1
      current = current.next_node 
    end

    if index == 0 
      @head = current.next_node
      return head 
    else 
      prev.next_node = current.next_node
      return prev
    end
  end
end 
