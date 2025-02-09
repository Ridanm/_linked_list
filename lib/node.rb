# frozen_string_literal: true

# Class Node contains the value of the node and the next node it can point to
class Node
  attr_accessor :data, :next_node

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end
end
