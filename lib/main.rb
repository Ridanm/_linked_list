require './node.rb'
require './linked_list.rb'

node = Node.new('paso', nil)
list = LinkedList.new()

# first = list.append('Primer_valor')
list.append('Primer_valor')
list.append('Segudo_valor')
p list.head

