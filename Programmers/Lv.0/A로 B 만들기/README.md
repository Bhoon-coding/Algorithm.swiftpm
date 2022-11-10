#  A로 B 만들기

### 문제
<img src="https://user-images.githubusercontent.com/64088377/200709533-4b284858-ed91-4790-9654-59d9297aed5f.png" width="500" >


### 풀이 <br>
```swift 
func solution(_ before:String, _ after:String) -> Int {
    return before.sorted() == after.sorted() ? 1 : 0
}

solution("allpe", "apple")
```

정리 <br>
https://peppo.tistory.com/170

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120886
