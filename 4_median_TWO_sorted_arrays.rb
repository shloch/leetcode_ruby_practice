#exeercise ==> https://leetcode.com/problems/median-of-two-sorted-arrays/

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
