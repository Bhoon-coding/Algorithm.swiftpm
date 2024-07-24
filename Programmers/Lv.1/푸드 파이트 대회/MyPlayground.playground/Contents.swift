import Foundation

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
