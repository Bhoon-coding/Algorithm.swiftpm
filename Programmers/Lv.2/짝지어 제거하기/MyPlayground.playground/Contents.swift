import Foundation

func solution(_ s:String) -> Int {
    var tempArr: [Character] = []
    
    for char in s {
        if let last = tempArr.last, last == char {
            tempArr.removeLast()
        } else {
            tempArr.append(char)
        }
    }
    
    return tempArr.isEmpty ? 1 : 0
}

//solution("baabaa")
solution("cdcd")
