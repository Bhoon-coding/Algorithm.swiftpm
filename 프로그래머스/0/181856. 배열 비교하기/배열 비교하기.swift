import Foundation

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