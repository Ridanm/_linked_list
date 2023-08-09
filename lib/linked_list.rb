class LinkedList # Represent full list

  attr_accessor :head 

  def initialize
    @head = nil 
  end

  def append(value) # adds a new containing value to the end of the list
    if head.nil?
      @head = Node.new(value) 
    else 
      current = @head 
      current = current.next_node while current.next_node
      current.next_node = Node.new(value)
    end
  end

  def prepend_(value) # adds a new node containing value to the start of the list
    new_node = Node.new(value)
    new_node.next_node = @head 
    @head = new_node 
  end

  def size # returns the total number of nodes in the list
    count = 0
    current = @head 
    while current  
      count += 1
      current = current.next_node 
    end
    count 
  end

  def size_recursive(node=@head)
    return 0 if node.nil? 
    return 1 + size_recursive(node.next_node)
  end

  def head_node # returns the first node in the list 
    return 'Empty list...' if head.nil? 
    @head
  end

  def tail # return the last node in the list
    node = @head 
    ref_last = nil 

    while node 
      ref_last = node
      node = node.next_node
    end

    ref_last  
  end

  def at(index) # returns the node at the given index
    return 'Index out of range...' if index > size - 1 || index < 0 

    current = @head 
    count = 0 
    while current 
      return current if count == index 
      current = current.next_node 
      count += 1 
    end
  end 

  def pop # removes the last elemnet from the list 
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

  def contains?(value) # returns true if the passed in value is the list and otherwise returns false
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


  def find(value, node = @head, counter = 0) # return the index of the node containing value, or nil if not 
    return if node.nil?
    return counter if node.data == value 

    find(value, node.next_node, counter += 1)
  end

  def to_s(list = @head) # represent linked_list object as string, Must show: ( value ) -> ( value ) -> ( value ) -> nil
    return print "nil\n" if list.nil? 
    print "( #{list.data} ) -> "
    to_s(list.next_node)
  end
 
  # Extra credit 
  def insert_at(value, index)
    return puts 'Wrong index' if index < 0 || index > size 
    insert = Node.new(value)

    if index == 0 
      insert.next_node = @head 
      @head = insert 
    else   
      current = @head 
      prev = nil 
      count = 0

      while count < index && current 
        prev = current 
        current = current.next_node 
        count += 1
      end

      prev.next_node = insert 
      insert.next_node = current 
    end
  end

  def remove_at(index) # that removes the node at the given index. 
    return if index < 0 || @head.nil? 
    node = @head 
    
    if index == 0 
      @head = @head.next_node 
    else 
      prev = nil 
      count = 0 

      while count < index && !node.nil? 
        prev = node 
        node = node.next_node 
        count += 1
      end
      return if node.nil? 
      prev.next_node = node.next_node
    end
    node 
  end

end