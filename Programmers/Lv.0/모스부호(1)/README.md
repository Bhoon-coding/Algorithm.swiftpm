#  모스부호(1)

### 문제
<img src="https://user-images.githubusercontent.com/64088377/199628957-09f25c86-5a52-463c-8145-c629f50a1490.png" width="500" >
<img src="https://user-images.githubusercontent.com/64088377/199628954-7970eef1-874c-4573-9339-ec91afb492f6.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

let morse = [
    ".-": "a",
    "-...": "b",
    "-.-.": "c",
    "-..": "d",
    ".": "e",
    "..-.": "f",
    "--.": "g",
    "....": "h",
    "..": "i",
    ".---": "j",
    "-.-": "k",
    ".-..": "l",
    "--": "m",
    "-.": "n",
    "---": "o",
    ".--.": "p",
    "--.-": "q",
    ".-.": "r",
    "...": "s",
    "-": "t",
    "..-": "u",
    "...-": "v",
    ".--": "w",
    "-..-": "x",
    "-.--": "y",
    "--..":"z"
]

func solution(_ letter:String) -> String {
    return letter
        .components(separatedBy: " ")
        .compactMap { morse[$0] }
        .joined()
}

solution(".... . .-.. .-.. ---")

```

### 정리 <br>
https://peppo.tistory.com/166

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120838
