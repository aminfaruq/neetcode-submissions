class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var left = 0
        var maxLen = 0
        var seen = Set<Character>()
        var currentLen = 0

        for right in 0..<chars.count {

            while seen.contains(chars[right]) {
                seen.remove(chars[left])
                left += 1
            }

            currentLen = right - left + 1
            maxLen = max(maxLen, currentLen)
            seen.insert(chars[right])
        }
        return maxLen
    }
}

