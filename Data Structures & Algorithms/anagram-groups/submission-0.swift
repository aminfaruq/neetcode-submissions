class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [String: [String]] = [:]

        for str in strs {
            let key = getKey(str)
            dict[key, default: []].append(str)
        }

        return Array(dict.values)
    }

    func getKey(_ str: String) -> String {
        var freq: [Character: Int] = [:]

        for char in str {
            freq[char, default: 0] += 1
        }

        let key = freq.keys.sorted().map { "\($0)\(freq[$0]!)" }.joined()
        return key
    }
}