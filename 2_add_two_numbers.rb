
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
    t = l1
    t2 = l2
    first = []
    second = []
    
    while t != nil || t2 !=nil
        if t != nil
            first << t.val 
            t = t.next
        end
        if t2 != nil
            second << t2.val
            t2 = t2.next
        end
    end
    
    
    
    t3 = first.reverse.join.to_i
    t4 = second.reverse.join.to_i
    
   
    return (t3+t4).to_s.split('').map(&:to_i).reverse
end