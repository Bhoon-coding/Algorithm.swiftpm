#  Best Time to Buy and Sell Stock

### 문제

일별로 주식 가격이 주어졌을 때, 최대 이익을 구하기

<img width="50%" src = "https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/bcb49a39-f670-49b2-b0b8-e5c719adc81b">

### 풀이 <br>

```swift 
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
```
**시간제약에 걸림.** 

- 반복문 두개로 prices[j] - price 값을 각각 구함
- 각각 구해진 값은 result에 추가
- 반복문이 다 실행된 후에 result 요소들중 가장 큰 값을 구함 ( **max()** 사용 )

```swift
/// 다른사람 문제풀이
class Solution {
   func maxProfit(_ prices: [Int]) -> Int {
       guard prices.count > 1 else { return 0 }
       var best = 0, current = 0
       for index in 1..<prices.endIndex {
           current = max(0, current + prices[index] - prices[index-1])
           print("current: \(current)")
           print("best: \(best)")
           best = max(best, current)
       }
       return best
   }
}
Solution().maxProfit([7,1,5,3,6,4])
```
- 1 ~ 6 (주어진배열의 마지막) 만큼을 반복문을 사용해 돌림
- current 값은 `0(초기숫자), current + prices[index] - prices[index-1]`를 이용해 가장 큰값을 current에 대입
- current 값 순서: 0 → 4 → 2 → 5 → 3 
- best 값은 `best, current`중 가장 큰수를 best에 대입
- best 값 순서: 0 → 0 → 4 → 4 → 5 

### 정리 <br>
https://peppo.tistory.com/208

문제 출처 <br>
https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
