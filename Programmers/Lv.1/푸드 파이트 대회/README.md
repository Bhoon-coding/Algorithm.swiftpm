#  푸드 파이트 대회

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/3ef407ab-9b2d-42b8-addd-83dd53f7c5c2">
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/f65489ce-55b0-4f5a-99f3-3d66a6eb79a9">

### 풀이 <br>
```swift 
func solution(_ food:[Int]) -> String {
    var result: String = ""
    var tempArr: [Int] = food.reversed()
    var foodArr: [Int] = [0]
    var foodCount: Int = 0
    var foodNum: Int = food.endIndex - 1
    
    for i in 0..<tempArr.count - 1 {
        foodCount = tempArr[i]
        foodArr = separateFood(foodCount, foodNum, foodArr)
        foodNum -= 1
    }
    result = foodArr.map { String($0 )}.joined()
    
    return result
}

func separateFood(_ foodCount: Int, _ foodNum: Int, _ foodArr: [Int]) -> [Int] {
    var arr: [Int] = foodArr
    var count: Int = foodCount
    
    if count > 1 {
        arr.append(foodNum)
        count -= 1
        arr.insert(foodNum, at: arr.startIndex)
        count -= 1
        arr = separateFood(count, foodNum, arr)
    }
    return arr
}

//solution([1,3,4,6])
//solution([1, 2, 2, 2, 2])
// 123404321


// 다른사람 풀이
func solution2(_ food:[Int]) -> String {
    var result = ""
    for i in food.indices {
        print(i)
        result += String(repeating: String(i), count: food[i] / 2)
    }
    
    return result + "0" + result.reversed()
}

solution2([1, 2, 2, 2, 2])
```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/134240
