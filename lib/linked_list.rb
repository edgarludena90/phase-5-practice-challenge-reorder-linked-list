require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def reorder_linked_list
      # if the list is empty, no need to continue
  return if head.nil?

  # set odd to the first odd node and even to the first even node
  odd = head
  even = head.next_node

  # keep a reference to the first even node
  even_head = even

  while even && even.next_node
    # change odd's next_node property to point to the next odd node
    odd.next_node = even.next_node

    # reset the odd variable to that node
    odd = odd.next_node

    # change even's next_node property to point to the node after
    # the new odd node, i.e., the next even node
    even.next_node = odd.next_node

    # reset the even variable to that node
    even = even.next_node
  end

  # change the next_node property of the last odd node to point to the first even node
  odd.next_node = even_head
  end
end
