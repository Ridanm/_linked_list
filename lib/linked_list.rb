class LinkedList # Represent full list

  attr_accessor :head 

  def initialize
    @head = nil 
  end

  def append(value) # adds a new containing value to the end of the list
    if @head.nil?
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

  def head # returns the first node in the list 
    @head.value 
  end

  def tail # returns the last node in the list 
    current = @head 
    count = 0
    long = size - 1
    while count < long 
      current = current.next_node
      count += 1
    end
    current.value
  end

  def at(index) # returns the node at the given index
    if index > size - 1 || index < 0
      return "This index does not correspond to this list"
    end

    current = @head 
    count = 0 
    while current 
      return current.value if count == index 
      current = current.next_node 
      count += 1 
    end
  end 

    # def at(index, node = head, counter = 0)
    #   return node if index == counter
    #   return nil if last_node?(node)
  
    #   at(index, node.next_node, counter + 1)
    # end

  def pop # removes the last elemnet from the list 
    delete(tail)
  end

  def contains?(value) # returns true if the passed in value is the list and otherwise returns false

  end

  def find(value) # return the index of the node containing value, or nil if not 

  end

  def to_s # represent linked_list object as string, Must show: (value) -> (value) -> (value) -> nil
    puts "(#{@head.value}) -> "
  end
 
  # Extra credit 
  def insert_at(value, index) # that insert a new node with the provided value at the given index.

  end

  # When insert or remove a node, some of the nodes will need update their next_node link update.
  def remove(index) # that removes the node at the given index. 

  end

end