=begin
1. Two Sum

Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:

Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
=end 

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    result = []
    
    nums.each_index do |i|
        (i+1...nums.size).each do |j|
            result.push(i, j) if nums[i] + nums[j] == target
        end
    end
        
    result
end

p two_sum([2, 7, 11, 15], 9)