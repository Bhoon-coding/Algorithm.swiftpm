#  간단한 논리 연산

### 문제
<img src="https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/496d2374-eecb-45b6-aef9-e6ecd3b36fb0" width="500" >


### 풀이 <br>
```swift 
func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    var tempOne: Bool = x1 || x2 ? true : false
    var tempTwo: Bool = x3 || x4 ? true : false
    
    return tempOne && tempTwo
}
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/181917
