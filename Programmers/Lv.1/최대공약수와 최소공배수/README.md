#  최대공약수와 최소공배수

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/0a006eda-55fc-4dd0-8fba-ced478a1c385">

### 풀이 <br>
```swift 
func solution(_ n: Int, _ m: Int) -> [Int] {
    let g = gcd(n, m)
    let l = lcm(n, m)
    
    return [g, l]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let r = a % b
    
    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    let r = a * b / gcd(a, b)
    
    return r
}

solution(34, 43)

```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12940
