class Node # Contain value_method and the link to the next_node, set bothas nil by default
  
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil) 
    @value = value
    @next_node = next_node
  end

end
