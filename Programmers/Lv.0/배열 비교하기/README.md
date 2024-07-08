#  배열 비교하기

### 문제
<img src="https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/1280779f-f2cd-46e7-9987-468b3bc4d342" width="500" >


### 풀이 <br>
```swift 
import Foundation

/*
 1. 길이 먼저 비교
 2. 길이가 같으면 요소의 합 비교
 arr1이 크면 1, arr2가 크면 -1, 같으면 0
 */
func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    var result: Int = 0
    
    guard arr1.count != arr2.count else {
        result = compareTwoArray(arr1, arr2)
        return result
    }
    
    result = arr1.count > arr2.count ? 1 : -1
    
    return result
}

func compareTwoArray(_ arr1:[Int], _ arr2:[Int]) -> Int {
    var result: Int = 0
    let arr1Value: Int = arr1.reduce(0) { $0 + $1 }
    let arr2Value: Int = arr2.reduce(0) { $0 + $1 }
    
    if arr1Value == arr2Value {
        result = 0
    } else if arr1Value > arr2Value {
        result = 1
    } else {
        result = -1
    }
    
    return result
}

solution([49, 13], [70, 11, 2])

```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/181856
