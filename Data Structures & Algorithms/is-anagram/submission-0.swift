class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var dict: [Character: Int] = [:]

        for input1 in s {
            dict[input1, default: 0] += 1 
        }

        for input2 in t {
            dict[input2, default: 0] -= 1 
        }

        for (_, value) in dict {
            if value != 0 {
                return false
            }
        }

        return true
    }
}
