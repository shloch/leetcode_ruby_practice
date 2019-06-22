
=begin
      
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example:

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.
      
=end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    n1 = list_to_int(l1)
    n2 = list_to_int(l2)    
    int_to_list(n1 + n2)
end

def list_to_int(list)
    nextNode = list.next
    num = list.val.to_s

    while nextNode
        num += nextNode.val.to_s
        nextNode = nextNode.next
    end
    
    num.split('').reverse.join('').to_i
end


#find tail of a list
 def find_tail(list)
    node = list
    return node if !node.next
    return node if !node.next while (node = node.next)
  end
     
     
def int_to_list(int) 
    arr = int.to_s.split('')
    p arr
    list = ListNode.new(arr.pop) #
    #pointer = list
        
    while !arr.empty? do
         tail = find_tail(list)
         tail.next = ListNode.new(arr.pop)
    end
    
    list
end