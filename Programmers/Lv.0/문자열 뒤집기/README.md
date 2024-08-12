#  문자열 뒤집기

### 문제
<img src="https://github.com/user-attachments/assets/47ce8e11-51ea-40e5-83f7-fc7459cf9874" width="500" >


### 풀이 <br>
```swift 
func solution(_ my_string: String) -> String {
    var result: [Character] = []
    
    for char in my_string {
        result.insert(char, at: 0)
    }
    
    return String(result)
}
solution("jaron")


func solution2(_ my_string: String) -> String {
    return String(my_string.reversed())
}

solution2("jaron")

```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120822
