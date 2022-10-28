# 최댓값 만들기(2)

### 문제
<img src="https://user-images.githubusercontent.com/64088377/198418736-55d00ddf-2f1e-4747-ac54-a452f4775af5.png" width="500" >


### 풀이 <br>
```swift 
func solution(_ numbers:[Int]) -> Int {
    var maxValue: Int = 0
    for i in 0...numbers.count - 1 {
        for j in 0...numbers.count - 1 {
            if i != j {
                maxValue = max(maxValue, numbers[i] * numbers[j])
            }
        }
    }
    return maxValue
}
```

### 정리 <br>


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120862
