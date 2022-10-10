#  내적

### 문제
![스크린샷 2022-10-09 오후 12 49 00](https://user-images.githubusercontent.com/64088377/194736986-15721280-30c3-4dba-bb2b-fb17b57dee45.png)


### 사용 메소드 <br>


### 풀이 <br>
```swift 
import Foundation

func solution(_ s:String) -> String {
    
    let portion = s.count/2  // 몫
    let index = s.count % 2 == 0 ?
    s.index(s.startIndex, offsetBy: portion - 1) :
    s.index(s.startIndex, offsetBy: portion)
    let nextIndex = s.index(s.startIndex, offsetBy: portion)
    
    return s.count % 2 == 0 ? "\(s[index])" + "\(s[nextIndex])" : "\(s[index])"
}

solution("qwrq")

```

### 정리 <br>


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/70128
