#  아이스 아메리카노

### 문제
<img src="https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/a5e2e707-1221-4882-a0e0-e3795af6b665" width="500" >


### 풀이 <br>
```swift 
func solution(_ money:Int) -> [Int] {
    let coffeePrice: Int = 5500
    let coffeeCount: Int = money / coffeePrice
    let change: Int = money - (coffeePrice * coffeeCount)
    return [coffeeCount, change]
}
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120804
