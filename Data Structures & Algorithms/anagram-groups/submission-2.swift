class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: [String]]()

        for input in strs {
            let sortedKey = String(input.sorted())
            dict[sortedKey, default: []].append(input)
        }

        return Array(dict.values)
    }
}
