require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def reorder_linked_list
    return unless self.head && self.head.next_node
    
    odd = self.head
    even = self.head.next_node

    first_even = even

    while even && even.next_node
      odd.next_node = even.next_node
      odd = odd.next_node

      even.next_node = odd.next_node
      even = even.next_node
    end
    odd.next_node = first_even
  end
end
