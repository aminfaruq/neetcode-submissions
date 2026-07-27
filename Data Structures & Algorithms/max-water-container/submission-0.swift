class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var left = 0
        var right = heights.count - 1
        var maxWater = 0

        while left < right {
            let inputRight = min(left, right)
            let inputLeft = max(left, right)
            let currentWidth = inputLeft - inputRight

            let currentHeight = min(heights[left], heights[right])

            let currentArea = currentHeight * currentWidth

            maxWater = max(maxWater, currentArea) 

            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }

        return maxWater
    }
}
