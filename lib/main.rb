# frozen_string_literal: true

require './extra_credit'
require './node'
require './linked_list'

list = LinkedList.new
list.append('two')
list.append('three')
list.prepend!('one')
list.append('four')
list.append('six')
list.append('five')

print "\nAll nodes => "
list.to_s

puts "head => #{list.head_node.data}"
puts "size => #{list.size}"
puts "tail => #{list.tail.data}"
puts "at_index(1) => #{list.at(1).data}"
puts "\nremove last #{list.pop}"
puts "size => #{list.size}"

puts "contains(four) => #{list.contains?('four')}"
puts "contains(five) => #{list.contains?('five')}"
puts "find(one) return index => #{list.find('one')}"
puts "find(five) return index => #{list.find('five')}"
puts "find(six) return index => #{list.find('six')}"

list.insert_at(6, 'insert_at(6)')
list.insert_at(0, 'insert_at(0)')
list.insert_at(2, 'insert_at(2)')

list.remove_at(5)
list.remove_at(0)
list.remove_at(2)
puts
list.to_s

puts "\nOdin list"
list_odin = LinkedList.new

list_odin.append('dog')
list_odin.append('cat')
list_odin.append('parrot')
list_odin.append('hamster')
list_odin.append('snake')
list_odin.append('turtle')
list_odin.to_s
