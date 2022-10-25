import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var resultString: [Character] = Array(my_string)
    var tempArr: [Character] = []
    tempArr.append(Array(my_string)[num1])
    tempArr.append(Array(my_string)[num2])
    resultString[num1] = tempArr.popLast()!
    resultString[num2] = tempArr.popLast()!
    return String(resultString)
}

solution("hello", 1, 2)

// Refactoring

//func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
//    var arr: [String] = my_string.map { String($0) }
//    let temp = arr[num1]
//    arr[num1] = arr[num2]
//    arr[num2] = temp
//    return arr
//}
//
//solution("hello", 1, 2)
