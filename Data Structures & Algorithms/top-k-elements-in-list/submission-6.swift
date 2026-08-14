class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
       
        var dict = [Int: Int]()

        for num in nums {
            dict[num, default: 0] += 1
        }

        var buckets = [[Int]](repeating: [], count: nums.count + 1)
        for (num, count) in dict {
            buckets[count].append(num)
        }

        var result = [Int]()
        for i in stride(from: buckets.count - 1, through: 0, by: -1) {
            result.append(contentsOf: buckets[i])
            if result.count == k { break }
        }

        return result
    }
}
  