#  크기가 작은 부분문자열

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/7f508fb7-bf5a-4e09-a22e-1c786aeb3b25">
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/3787e88e-3d21-4b69-bad1-2076bb329870">

### 풀이 <br>
```swift 
func solution(_ t:String, _ p:String) -> Int {
    var tempT: String = t
    let pLength = p.count
    var tempArr: [Int] = []
    
    while tempT.count >= pLength {
        let element = Int(tempT.prefix(pLength))!
        tempT.removeFirst()
        tempArr.append(element)
    }
    
    return tempArr.filter { $0 <= Int(p)! }.count
}
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/147355
