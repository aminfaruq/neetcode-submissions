class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var leftProduct = Array(repeating: 1, count: nums.count)
        var rightProduct = Array(repeating: 1, count: nums.count)
        var provisionalMultipication = 1

        for index in 0..<nums.count {
            leftProduct[index] = provisionalMultipication

            provisionalMultipication *= nums[index]
        }

        provisionalMultipication = 1
        for index in (0..<nums.count).reversed() {
            rightProduct[index] = provisionalMultipication

            provisionalMultipication *= nums[index]
        }

        for (left, right) in zip(leftProduct, rightProduct) {
            result.append(left * right)
        }

        return result
    }
}
