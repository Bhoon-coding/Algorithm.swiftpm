#  문자 반복 출력하기

### 문제
<img src="https://user-images.githubusercontent.com/64088377/198168813-9643ce2a-feb7-4d50-a43a-6e38697c5b55.png" width="500" >


### 풀이 <br>
```swift 
func solution(_ my_string:String, _ n:Int) -> String {
    var result = ""
    for char in my_string {
        for _ in 0..<n {
            result.append(char)
        }
    }
    return result
}
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120825
