class Node # Contain value_method and the link to the next_node, set bothas nil by default
  
  attr_accessor :value, :next_node

  def initialize(value = nil) 
    @value = value
    @next_node = nil
  end

end
