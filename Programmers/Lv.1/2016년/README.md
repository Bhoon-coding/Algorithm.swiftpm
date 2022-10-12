#  2016년

### 문제
![스크린샷 2022-10-12 오전 11 51 56](https://user-images.githubusercontent.com/64088377/195238667-a9ce719b-e7a6-4c18-a166-083d7200238e.png)


### 풀이 <br>
```swift 
let week: [String] = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
let yoonDate = [
    1: 5,
    2: 1,
    3: 2,
    4: 5,
    5: 0,
    6: 3,
    7: 5,
    8: 1,
    9: 4,
    10: 6,
    11: 2,
    12: 4
]

func solution(_ a:Int, _ b:Int) -> String {
    var index: Int = yoonDate[a]!
    for _ in 1...b {
        if index > 6 {
            index = 0
        } 
        index += 1
    }
    return week[index - 1]
}

solution(5, 24)

```

### 정리 <br>
https://peppo.tistory.com/151

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12901
