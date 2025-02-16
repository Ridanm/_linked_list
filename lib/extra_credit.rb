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
    return if @head.nil?

    if index.zero?
      @head = @head.next_node
      return
    end

    current = @head
    previous = nil
    count = 0

    while count < index
      return if current.nil?

      previous = current
      current = current.next_node
      count += 1
    end

    return if current.nil?

    previous.next_node = current.next_node
  end
end
