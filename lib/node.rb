# frozen_string_literal: true

# Creates a node with its value and the next one it points to
class Node
  attr_accessor :data, :next_node

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end
end
