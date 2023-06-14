class LinkedList # Represent full list

  attr_accessor :head 

  def initialize
    @head = nil 
  end

  def append(value) # adds a new containing value to the end of the list
    @head = Node.new(value) if @head.nil?
    # last_node = @head 
    # unless last_node.next_node.nil? == nil 
    #   last_node = last_node.next_node 
    # end
    # last_node.next_node = Node.new(value)
  end

  def prepend(value) # adds a new node containing value to the start of the list
    
  end

  def size # returns the total number of nodes in the list

  end

  def head # returns the first node in the list 

  end

  def tail # returns the last node in the list 

  end

  def at(index) # returns the node at the given index

  end

  def pop # removes the last elemnet from the list 

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