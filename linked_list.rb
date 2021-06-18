# frozen_string_literal: true

require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)

    if head.nil?
      self.head = new_node
    elsif head.next_node.nil?
      head.next_node = new_node
    else
      tmp = head

      until tmp.next_node.nil?
        p 'UNTIL STATEMENT RUNS'
        tmp = tmp.next_node
      end

      tmp.next_node = new_node
    end
  end

  def prepend(value)
    prev_head = head
    self.head = Node.new(value)
    head.next_node = prev_head
  end

  def size
    tmp = head
    count = 0

    until tmp.nil?
      count += 1
      tmp = tmp.next_node
    end

    count
  end

  def tail
    tmp = head

    tmp = tmp.next_node until tmp.next_node.nil?

    tmp
  end

  def at(index)
    tmp = head
    iteration = 0

    until iteration == index
      break if tmp.nil?

      tmp = tmp.next_node
      iteration += 1
    end

    tmp || 'not found'
  end

  def pop
    tmp = head

    until tmp.next_node.nil?
      prev_node = tmp
      tmp = tmp.next_node
    end

    prev_node.next_node = nil
  end

  def contains?(value)
    tmp = head

    until tmp.nil?
      return true if tmp.value == value

      tmp = tmp.next_node
    end

    false
  end

  def find(value)
    tmp = head
    count = 0

    until tmp.nil?
      return count if tmp.value == value

      tmp = tmp.next_node
      count += 1
    end
  end
end
