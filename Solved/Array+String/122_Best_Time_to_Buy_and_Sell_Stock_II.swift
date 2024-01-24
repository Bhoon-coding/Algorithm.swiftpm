class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0

        var buyPrice = prices[0]
        for sellPrice in prices {
            if sellPrice > buyPrice {
                maxProfit += sellPrice - buyPrice
                buyPrice = sellPrice
            } else if sellPrice < buyPrice {
                buyPrice = sellPrice
            }
        }
        return maxProfit
    }
}
