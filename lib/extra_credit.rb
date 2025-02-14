# frozen_string_literal: true

# This module contains extra methods for the linked list project
module ExtraCredit
  def insert_at(value, index)
    return if index.to_i.negative? || index.to_i > size - 1

    current = @head
    insert = Node.new(value)
    prev = nil
    count = 0

    while count < index
      prev = current
      count += 1
      current = current.next_node
      insert.next_node = current
    end

    if index.zero?
      @head = insert
    else
      prev.next_node = insert
      @head
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
