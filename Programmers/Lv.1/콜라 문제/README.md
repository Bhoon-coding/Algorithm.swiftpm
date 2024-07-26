#  콜라 문제

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/5874369d-cdc7-4fd6-ab1b-b4e2a02acc0c">
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/1def1e7b-65d1-41e6-a4db-0a562279952d">
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/de99dde2-346f-4ee4-8688-f258ac6aa364">
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/19e4278a-c2dc-4706-9cd0-fb541bf4032a">

### 풀이 <br>
```swift 
import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var currentCola: Int = n
    var result: Int = 0
    
    while currentCola >= a {
        currentCola -= a
        result += b
        currentCola += b
    }
    return result
}

solution(5, 3, 21)

```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/132267
