require './node.rb'
require './linked_list.rb'

list = LinkedList.new()

# first = list.append('Primer_valor')
primero = list.append('Primer_valor')
segundo = list.append('Segudo_valor')
tercero = list.append('tercer_valor')
al_comienzo = list.prepend_('al_principio')
antes = list.prepend_('antes')
cuarto = list.append('last_value')

# p primero.value
# p segundo.value 
# p tercero.value 
# p al_comienzo.value
# p antes.value

# puts "\nnext_node..."
# #p primero.next_node
# p antes.next_node
# #p tercero.next_node

# puts "\nlist..."
# puts list.class  

# puts "\nsize..."
# p list.size 

# puts "\nhead"
# p list.head

# puts "\ntail..."
# p list.tail

puts "\nat_index..."
p list.at(0)
