/// 일별로 주식 가격이 주어졌을 때, 최대 이익을 구하기


/// 내가 푼 문제풀이
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        var result: [Int] = []

        for price in prices {
            for j in 1..<prices.count {
                if prices[j] - price > 0 {
                    var profit = prices[j] - price
//                    print(prices[j], "-", price, "=", prices[j] - price)
                    result.append(profit)
                }
            }
        }
        return result.max() ?? 0
    }
}

/// 다른사람 문제풀이
//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        guard prices.count > 1 else { return 0 }
//        var best = 0, current = 0
//        for index in 1..<prices.endIndex {
//            current = max(0, current + prices[index] - prices[index-1])
//            print("current: \(current)")
//            print("best: \(best)")
//            best = max(best, current)
//        }
//        return best
//    }
//}
Solution().maxProfit([7,1,5,3,6,4])
