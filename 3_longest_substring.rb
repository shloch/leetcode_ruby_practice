=begin
Given a string, find the length of the longest substring without repeating characters.

Example 1:

Input: "abcabcbb"
Output: 3 
Explanation: The answer is "abc", with the length of 3. 
Example 2:

Input: "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3. 
             Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
=end

#JAVASCRIPT

var lengthOfLongestSubstring = function(s) {
    let max = 0;
    let aux = '';
    let j = 0;
    for(let i = 0; i<s.length; i++ ) {
        if (aux.includes(s[i])) {
            aux = '';
            i = j;
        } else {
            if (aux.length === 0) j = i;
            aux += s[i];
            max = Math.max(max, aux.length);
        }
    }
    return max;
};

length_of_longest_substring("abcabccbb")
