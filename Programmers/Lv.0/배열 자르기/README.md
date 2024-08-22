#  배열 자르기

### 문제
<img src="https://github.com/user-attachments/assets/42e040cd-e600-41e6-a006-42ef588eecfd" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return Array(numbers[num1...num2])
}

solution([1,3,5], 1, 2)
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120833
