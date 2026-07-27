class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // let sortNums = nums.sorted()

        // var left = 0
        // var right = sortNums.count - 1

        // while (left < right) {
        //     let total = sortNums[left] + sortNums[right]

        //     if total == target {
        //         return [left, right]
        //     } else if total  < target {
        //         left += 1
        //     } else {
        //         right -= 1
        //     }
        // }

        var dict: [Int: Int] = [:]

        for (index, num) in nums.enumerated() {
            let complement = target - num

            if let complementIndex = dict[complement] {
                return [complementIndex, index]
            }

            dict[num] = index
        }

        return []
    }
}
