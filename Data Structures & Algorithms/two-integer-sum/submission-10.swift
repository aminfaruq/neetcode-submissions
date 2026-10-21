class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()

        for (index, num) in nums.enumerated() {
            let iteration = target - num

            if let complementIndex = dict[iteration] {
                return [complementIndex, index]
            }

            dict[num] = index
        }

        return []
    }
}
