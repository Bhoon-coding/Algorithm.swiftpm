# 수 조작하기 1

### 문제
<img src="https://github.com/user-attachments/assets/89a47425-b49b-4e36-b6c6-00849a50f625" width="500" >


### 풀이 <br>
```swift 
func solution(_ n:Int, _ control:String) -> Int {
    var result: Int = n
    
    for char in control {
        switch char {
        case "w":
            result += 1
        case "s":
            result -= 1
        case "d":
            result += 10
        default:
            result -= 10
        }
    }
    return result
}
solution(0, "wsdawsdassw")

// 다른사람의 풀이

func solution(_ n: Int, _ control: String) -> Int {
    return control.reduce(n) { acc, c in
        acc + (c == "w" ? 1 : c == "s" ? -1 : c == "d" ? 10 : -10)
    }
}
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/181926
