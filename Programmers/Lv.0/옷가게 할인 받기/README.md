#  옷가게 할인 받기

### 문제
<img src="https://github.com/user-attachments/assets/44745b26-a247-4c80-9afb-05d867347157" width="500" >


### 풀이 <br>
```swift 
func solution(_ price:Int) -> Int {
    var result: Double = Double(price)
    
    if price >= 100000 && price < 300000 {
        result = result * 0.95
    } else if price >= 300000 && price < 500000 {
        result = result * 0.9
    } else if price >= 500000 {
        result = result * 0.8
    }
    return Int(result)
}
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120818
