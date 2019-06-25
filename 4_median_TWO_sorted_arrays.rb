#exeercise ==> https://leetcode.com/problems/median-of-two-sorted-arrays/

=begin
There are two sorted arrays nums1 and nums2 of size m and n respectively.

Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

You may assume nums1 and nums2 cannot be both empty.

Example 1:

nums1 = [1, 3]
nums2 = [2]

The median is 2.0
Example 2:

nums1 = [1, 2]
nums2 = [3, 4]

The median is (2 + 3)/2 = 2.5
=end



# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    total_arr =  merge_sort(nums1, nums2)
    len = total_arr.size
    return total_arr[len/2].to_f if len.odd?
    return (total_arr[len/2] + total_arr[(len-1)/2])/2.0
end

def merge_sort(array1, array2)
  answer = []
  while (array1.length >= 1) && (array2.length >= 1)
    if (array1.first < array2.first)
      answer << array1.shift
    else 
      answer << array2.shift
    end
  end
  return answer + array1 + array2
end
