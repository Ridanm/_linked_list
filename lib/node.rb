class Node # Contain value_method and the link to the next_node, set bothas nil by default
  
  attr_accessor :data, :next_node

  def initialize(data=nil, next_node=nil) 
    @data = data
    @next_node = next_node
  end

end
