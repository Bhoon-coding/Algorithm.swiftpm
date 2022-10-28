# 최댓값 만들기(2)

### 문제
<img src="https://user-images.githubusercontent.com/64088377/198418736-55d00ddf-2f1e-4747-ac54-a452f4775af5.png" width="500" >


### 풀이 <br>
```swift 
// 테스트케이스 7번 미통과.. 
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

// 다른사람의 풀이 
func solution(_ numbers:[Int]) -> Int {
    var numbers = numbers.sorted()

    return max(numbers[0] * numbers[1], numbers[numbers.count-1] * numbers[numbers.count - 2])
}

solution([10, -20, 30, 5, 5, -20, 5])

```

### 정리 <br>
https://peppo.tistory.com/163

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120862
