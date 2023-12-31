require './node.rb'
require './linked_list.rb'

list = LinkedList.new()

list.app_end('two')
list.app_end('three')
list.prepend!('one')
list.app_end('four')
list.app_end('five')

print "\nAll nodes => "
list.to_s 
puts "head => #{list.head_node}"
puts "size => #{list.size}"
puts "tail => #{list.tail}"
puts "at_index(1) => #{list.at(1)}"
print "remove last => #{list.pop}"
list.to_s 
puts "contains(four) => #{list.contains?('four')}"
puts "contains(five) => #{list.contains?('five')}"
puts "find(one) return index => #{list.find('one')}"
puts "find(five) return index => #{list.find('five') || 'nil'}"
list.insert_at('insert_value', 2)
print "Insert_at(insert_value, 2) => "
list.to_s 
list.remove_at(2)
print "remove_at(2)( insert_value ) => "
list.to_s
