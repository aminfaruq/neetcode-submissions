class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()
        var collectedArr = [Int]()
    
        for input in nums {
            dict[input, default: 0] += 1
        }
  
        let sorted = dict.sorted(by: { $0.value > $1.value })
    
        for output in 0..<k {
            collectedArr.append(sorted[output].key)
        }
   
        return collectedArr
    }
}
