#  제일 작은 수 제거하기

### 문제
<img src="https://user-images.githubusercontent.com/64088377/200204642-7104e654-0261-49cf-87cd-6ff34881158a.png" width="500" >


### 풀이 <br>
1. 
```swift
  func solution(_ arr:[Int]) -> [Int] {
    guard arr.count > 1 else { return [-1] }
    guard let index = arr.firstIndex(of: arr.min()!) else { return [-1] }
    
    var result: [Int] = arr
    result.remove(at: index)
    return result
}
```
2.
```swift
func solution(_ arr:[Int]) -> [Int] {
    let min = arr.sorted(by: <)[0]
    return arr.count == 1 ? [-1] : arr.filter { $0 != min }
}
```

### 정리 <br>
https://peppo.tistory.com/169

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12935
