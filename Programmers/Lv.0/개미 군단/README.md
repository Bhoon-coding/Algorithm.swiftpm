#  개미 군단

### 문제
<img src="https://github.com/Bhoon-coding/Ijjeuminga/assets/64088377/fd200824-aaec-4358-8093-fa2ccf653cb9" width="500" >


### 풀이 <br>
```swift 
func solution(_ hp:Int) -> Int {
    guard hp > 0 else { return 0 }
    var antCount: Int = 0
    var impHp: Int = hp
    let general: Int = 5
    let soldier: Int = 3
    let worker: Int = 1

    antCount += impHp / general
    impHp = impHp % general
    
    antCount += impHp / soldier
    impHp = impHp % soldier
    
    antCount += impHp / worker
    return antCount
}
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120837
