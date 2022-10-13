#  문자열 다루기 기본

### 문제
![스크린샷 2022-10-13 오전 9 57 54](https://user-images.githubusercontent.com/64088377/195474717-04b1cf29-1a39-4a37-8452-29f1077ed875.png)


### 풀이 <br>
```swift 

func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        if Int(s) != nil {
            return true
        }
    }
    return false
}

solution("12a4")


```

### 정리 <br>
https://peppo.tistory.com/152

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12918
