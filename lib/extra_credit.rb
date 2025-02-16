# frozen_string_literal: true

# This module contains extra methods for the linked list project
module ExtraCredit
  def insert_at(index, value)
    new_node = Node.new(value)

    if index.zero?
      new_node.next_node = @head
      @head = new_node
    else
      current = @head
      count = 0

      while count < index
        return if current.nil?

        previous = current
        current = previous.next_node
        count += 1
      end

      new_node.next_node = current
      previous.next_node = new_node
    end
  end

  def remove_at(index)
    index = index.to_i
    return 'Wrong index...' if index.negative? || index > size - 1
    return if head.nil?

    current = @head
    prev = nil
    count = 0

    while count < index
      prev = current
      count += 1
      current = current.next_node
    end

    if index.zero?
      @head = current.next_node
      head
    else
      prev.next_node = current.next_node
      prev
    end
  end
end
