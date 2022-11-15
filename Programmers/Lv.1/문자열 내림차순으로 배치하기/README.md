#  문자열 내림차순으로 배치하기

### 문제
<img src="https://user-images.githubusercontent.com/64088377/201235520-aa5c3104-e5ef-4426-9b83-4b10c37354bf.png" width="500" >


### 풀이 <br>
1. 
```swift
  func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}

solution("Zbcdefg")
```

### 정리 <br>
https://peppo.tistory.com/172

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12917
