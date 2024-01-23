class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0

        var buyPrice = prices[0]
        for cellPrice in prices {
            if cellPrice > buyPrice {
                maxProfit += cellPrice - buyPrice
                buyPrice = cellPrice
            } else if cellPrice < buyPrice {
                buyPrice = cellPrice
            }
        }
        return maxProfit
    }
}
