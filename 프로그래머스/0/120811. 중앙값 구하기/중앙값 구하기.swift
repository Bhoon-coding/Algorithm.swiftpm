import Foundation

func solution(_ array:[Int]) -> Int {
    let sortedArr: [Int] = array.sorted()
    let middleIndex = (sortedArr.count - 1) / 2
    return sortedArr[middleIndex]
}