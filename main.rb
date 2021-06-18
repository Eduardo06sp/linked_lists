# frozen_string_literal: true

require_relative 'linked_list'

list = LinkedList.new
list.append('hi')
list.append('greetings')
list.append('TEST')
list.prepend('world')
list.prepend('hello')
list.to_s
p list.size
list.pop
list.to_s
p list.contains?('his')
p list.find('hi')
list.to_s
