class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
         var dict = [String: [String]]()
    
        for (index, input) in strs.enumerated() {
            let sort = String(input.sorted())
        
            if let anagram = dict[sort] {
                dict[sort]?.append(input)
            } else {
                dict[sort] = [strs[index]]
            }
        }
    
        let values = dict.values
        return values.sorted(by: { $0.count < $1.count })
    }
}
