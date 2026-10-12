class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = 0
        var sell = 1
        var maxProfit = 0
        var currentProfit = 0

        while(sell < prices.count) {
            if prices[sell] > prices[buy] {
                currentProfit = prices[sell] - prices[buy] 
                maxProfit = max(maxProfit, currentProfit)
            } else {
                buy = sell
            }
            sell += 1
        }

        return maxProfit
    }
}
