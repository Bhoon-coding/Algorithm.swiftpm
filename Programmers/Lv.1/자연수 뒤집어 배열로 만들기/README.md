#  자연수 뒤집어 배열로 만들기

### 문제
<img src="https://user-images.githubusercontent.com/64088377/200099229-a1d1fb83-45a0-43ff-bcab-4b8e9fbc9f98.png" width="500" >


### 풀이 <br>
```swift
  func solution(_ n:Int64) -> [Int] {
     var result: [Int] = []
     var arr = String(n).reversed().map { result.append(Int(String($0))!) }
     return result
 }
```

### 정리 <br>
https://peppo.tistory.com/167

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12932
