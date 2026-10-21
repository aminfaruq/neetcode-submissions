class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict = [Character : Int]()

        for input in s {
            dict[input, default: 0] += 1
        }

        for input in t {
            dict[input, default: 0] -= 1
        }

        return !dict.values.contains(where: { $0 != 0 })        
    }
}
